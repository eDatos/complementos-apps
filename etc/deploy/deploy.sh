#!/bin/bash

HOME_PATH=complementos-apps
TRANSFER_PATH=$HOME_PATH/tmp
DEMO_ENV=$HOME_PATH/env
DEPLOY_TARGET_PATH_EXTERNAL=/servers/edatos-external/tomcats/edatos-external01/webapps
DEPLOY_TARGET_PATH_INTERNAL=/servers/edatos-internal/tomcats/edatos-internal01/webapps
ENVIRONMENT_RELATIVE_PATH_FILE=WEB-INF/classes/application.properties

RESTART=1

if [ "$1" == "--no-restart" ]; then
    RESTART=0
fi

scp -o ProxyCommand="ssh -W %h:%p deploy@estadisticas.arte-consultores.com" -r etc/deploy deploy@estadisticas.arte.internal:$TRANSFER_PATH
scp -o ProxyCommand="ssh -W %h:%p deploy@estadisticas.arte-consultores.com" -r target/complementos-apps-*.war deploy@estadisticas.arte.internal:$TRANSFER_PATH/complementos-apps.war
ssh -o ProxyCommand="ssh -W %h:%p deploy@estadisticas.arte-consultores.com" deploy@estadisticas.arte.internal <<EOF

    chmod a+x $TRANSFER_PATH/deploy/*.sh;
    . $TRANSFER_PATH/deploy/utilities.sh

    ###
    # COMPLEMENTOS-APPS-INTERNAL
    ###

    if [ $RESTART -eq 1 ]; then
        sudo service edatos-internal01 stop
        checkPROC "edatos-internal"
    fi

    # Update Process
    sudo rm -rf $DEPLOY_TARGET_PATH_INTERNAL/apps-internal
    sudo cp $TRANSFER_PATH/complementos-apps.war $DEPLOY_TARGET_PATH_INTERNAL/complementos-apps.war
    sudo unzip $DEPLOY_TARGET_PATH_INTERNAL/complementos-apps.war -d $DEPLOY_TARGET_PATH_INTERNAL/apps-internal
    sudo rm -rf $DEPLOY_TARGET_PATH_INTERNAL/complementos-apps.war
    
    # Restore Configuration
    sudo rm -f $DEPLOY_TARGET_PATH_INTERNAL/apps-internal/$ENVIRONMENT_RELATIVE_PATH_FILE
    sudo cp $DEMO_ENV/application_internal.properties $DEPLOY_TARGET_PATH_INTERNAL/apps-internal/$ENVIRONMENT_RELATIVE_PATH_FILE

    if [ $RESTART -eq 1 ]; then
        sudo chown -R edatos-internal.edatos-internal /servers/edatos-internal     
        sudo service edatos-internal01 start
    fi
    
    ###
    # COMPLEMENTOS-APPS-EXTERNAL
    ###
    
    if [ $RESTART -eq 1 ]; then
        sudo service edatos-external01 stop
        checkPROC "edatos-external"
    fi

    # Update Process
    sudo rm -rf $DEPLOY_TARGET_PATH_EXTERNAL/apps
    sudo mv $TRANSFER_PATH/complementos-apps.war $DEPLOY_TARGET_PATH_EXTERNAL/complementos-apps.war
    sudo unzip $DEPLOY_TARGET_PATH_EXTERNAL/complementos-apps.war -d $DEPLOY_TARGET_PATH_EXTERNAL/apps
    sudo rm -rf $DEPLOY_TARGET_PATH_EXTERNAL/complementos-apps.war
    
    # Restore Configuration
    sudo rm -f $DEPLOY_TARGET_PATH_EXTERNAL/apps/$ENVIRONMENT_RELATIVE_PATH_FILE
    sudo cp $DEMO_ENV/application_external.properties $DEPLOY_TARGET_PATH_EXTERNAL/apps/$ENVIRONMENT_RELATIVE_PATH_FILE

    if [ $RESTART -eq 1 ]; then
        sudo chown -R edatos-external.edatos-external /servers/edatos-external        
        sudo service edatos-external01 start
    fi
    
    echo "Finished deploy"
    
EOF