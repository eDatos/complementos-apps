#!/bin/bash

HOME_PATH=complementos-apps
TRANSFER_PATH=$HOME_PATH/tmp
SCRIPTS_PATH=$HOME_PATH/scripts
ENV_CONF=$HOME_PATH/env
DEPLOY_TARGET_PATH=/servers/frangollo/tomcats/frangollo01/webapps
ENVIRONMENT_RELATIVE_PATH_FILE=WEB-INF/classes/application.properties

RESTART=1

if [ "$1" == "--no-restart" ]; then
    RESTART=0
fi

scp -o "StrictHostKeyChecking=no" -r etc/deploy/config/pre/external/* deploy@mgcartera.gobiernodecanarias.net:$ENV_CONF
scp -o "StrictHostKeyChecking=no" -r etc/deploy/utils/utilities.sh deploy@mgcartera.gobiernodecanarias.net:$SCRIPTS_PATH
scp -o "StrictHostKeyChecking=no" -r target/complementos-apps-*.war deploy@mgcartera.gobiernodecanarias.net:$TRANSFER_PATH/complementos-apps.war
ssh -o "StrictHostKeyChecking=no" deploy@mgcartera.gobiernodecanarias.net <<EOF

    chmod a+x $SCRIPTS_PATH/utilities.sh;
    . $SCRIPTS_PATH/utilities.sh

    ###
    # COMPLEMENTOS-APPS-EXTERNAL
    ###

    if [ $RESTART -eq 1 ]; then
        sudo service frangollo01 stop
        checkPROC "frangollo"
    fi

    # Update Process
    sudo rm -rf $DEPLOY_TARGET_PATH/aplicaciones#appsistac
    sudo mv $TRANSFER_PATH/complementos-apps.war $DEPLOY_TARGET_PATH/complementos-apps.war
    sudo unzip $DEPLOY_TARGET_PATH/complementos-apps.war -d $DEPLOY_TARGET_PATH/aplicaciones#appsistac
    sudo rm -rf $DEPLOY_TARGET_PATH/complementos-apps.war

    # Restore Configuration
    sudo rm -f $DEPLOY_TARGET_PATH/aplicaciones#appsistac/$ENVIRONMENT_RELATIVE_PATH_FILE
    sudo mv $ENV_CONF/application.properties $DEPLOY_TARGET_PATH/aplicaciones#appsistac/$ENVIRONMENT_RELATIVE_PATH_FILE

    sudo chown -R frangollo:frangollo /servers/frangollo

    if [ $RESTART -eq 1 ]; then
        sudo service frangollo01 start
    fi

#    sudo rm -rf $SCRIPTS_PATH/*

    echo "Finished deploy"

EOF