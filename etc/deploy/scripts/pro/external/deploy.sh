#!/bin/bash

HOME_PATH=complementos-apps
TRANSFER_PATH=$HOME_PATH/tmp
SCRIPTS_PATH=$HOME_PATH/scripts
ENV_CONF=$HOME_PATH/env
DEPLOY_TARGET_PATH=/servers/bubango/tomcats/bubango01/webapps
ENVIRONMENT_RELATIVE_PATH_FILE=WEB-INF/classes/application.properties

RESTART=1

if [ "$1" == "--no-restart" ]; then
    RESTART=0
fi

scp -o "StrictHostKeyChecking=no" -r etc/deploy/config/pro/external/* deploy@mgcrinaco.gobiernodecanarias.net:$ENV_CONF
scp -o "StrictHostKeyChecking=no" -r etc/deploy/utils/utilities.sh deploy@mgcrinaco.gobiernodecanarias.net:$SCRIPTS_PATH
scp -o "StrictHostKeyChecking=no" -r target/complementos-apps-*.war deploy@mgcrinaco.gobiernodecanarias.net:$TRANSFER_PATH/complementos-apps.war
ssh -o "StrictHostKeyChecking=no" deploy@mgcrinaco.gobiernodecanarias.net <<EOF

    chmod a+x $SCRIPTS_PATH/utilities.sh;
    . $SCRIPTS_PATH/utilities.sh

    ###
    # COMPLEMENTOS-APPS-EXTERNAL
    ###

    if [ $RESTART -eq 1 ]; then
        sudo service bubango01 stop
        checkPROC "bubango"
    fi

    # Update Process
    sudo rm -rf $DEPLOY_TARGET_PATH/aplicaciones#appsistac
    sudo mv $TRANSFER_PATH/complementos-apps.war $DEPLOY_TARGET_PATH/complementos-apps.war
    sudo unzip $DEPLOY_TARGET_PATH/complementos-apps.war -d $DEPLOY_TARGET_PATH/aplicaciones#appsistac
    sudo rm -rf $DEPLOY_TARGET_PATH/complementos-apps.war

    # Restore Configuration
    sudo rm -f $DEPLOY_TARGET_PATH/aplicaciones#appsistac/$ENVIRONMENT_RELATIVE_PATH_FILE
    sudo mv $ENV_CONF/application.properties $DEPLOY_TARGET_PATH/aplicaciones#appsistac/$ENVIRONMENT_RELATIVE_PATH_FILE

    sudo chown -R bubango:bubango /servers/bubango

    if [ $RESTART -eq 1 ]; then
        sudo service bubango01 start
    fi

    sudo rm -rf $SCRIPTS_PATH/*

    echo "Finished deploy"

EOF