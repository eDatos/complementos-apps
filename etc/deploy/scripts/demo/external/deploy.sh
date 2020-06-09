#!/bin/bash

HOME_PATH=complementos-apps
TRANSFER_PATH=$HOME_PATH/tmp
SCRIPTS_PATH=$HOME_PATH/scripts
ENV_CONF=$HOME_PATH/env
DEPLOY_TARGET_PATH=/servers/edatos-external/tomcats/edatos-external01/webapps
ENVIRONMENT_RELATIVE_PATH_FILE=WEB-INF/classes/application.properties

RESTART=1

if [ "$1" == "--no-restart" ]; then
    RESTART=0
fi

scp -o ProxyCommand="ssh -W %h:%p deploy@estadisticas.arte-consultores.com" -r etc/deploy/config/demo/external/* deploy@estadisticas.arte.internal:$ENV_CONF
scp -o ProxyCommand="ssh -W %h:%p deploy@estadisticas.arte-consultores.com" -r etc/deploy/utils/utilities.sh deploy@estadisticas.arte.internal:$SCRIPTS_PATH
scp -o ProxyCommand="ssh -W %h:%p deploy@estadisticas.arte-consultores.com" -r target/complementos-apps-*.war deploy@estadisticas.arte.internal:$TRANSFER_PATH/complementos-apps.war
ssh -o ProxyCommand="ssh -W %h:%p deploy@estadisticas.arte-consultores.com" deploy@estadisticas.arte.internal <<EOF

    chmod a+x $SCRIPTS_PATH/utilities.sh;
    . $SCRIPTS_PATH/utilities.sh

    ###
    # COMPLEMENTOS-APPS-EXTERNAL
    ###

    if [ $RESTART -eq 1 ]; then
        sudo service edatos-external01 stop
        checkPROC "edatos-external"
    fi

    # Update Process
    sudo rm -rf $DEPLOY_TARGET_PATH/apps
    sudo mv $TRANSFER_PATH/complementos-apps.war $DEPLOY_TARGET_PATH/complementos-apps.war
    sudo unzip $DEPLOY_TARGET_PATH/complementos-apps.war -d $DEPLOY_TARGET_PATH/apps
    sudo rm -rf $DEPLOY_TARGET_PATH/complementos-apps.war

    # Restore Configuration
    sudo rm -f $DEPLOY_TARGET_PATH/apps/$ENVIRONMENT_RELATIVE_PATH_FILE
    sudo mv $ENV_CONF/application.properties $DEPLOY_TARGET_PATH/apps/$ENVIRONMENT_RELATIVE_PATH_FILE

    if [ $RESTART -eq 1 ]; then
        sudo chown -R edatos-external:edatos-external /servers/edatos-external
        sudo service edatos-external01 start
    fi

    sudo rm -rf $SCRIPTS_PATH/*

    echo "Finished deploy"

EOF