#!/bin/sh

HOME_PATH=complementos-apps
TRANSFER_PATH=$HOME_PATH/tmp
DEMO_ENV=$HOME_PATH/env
DEPLOY_TARGET_PATH_EXTERNAL=/servers/edatos-external/tomcats/edatos-external01/webapps
DEPLOY_TARGET_PATH_INTERNAL=/servers/edatos-internal/tomcats/edatos-internal01/webapps

RESTART=1

if [ "$1" == "--no-restart" ]; then
    RESTART=0
fi

scp -r target/complementos-apps-*.war deploy@estadisticas.arte-consultores.com:$TRANSFER_PATH/complementos-apps.war

ssh deploy@estadisticas.arte-consultores.com <<EOF

    ###
    # COMPLEMENTOS-APPS-INTERNAL
    ###

    if [ $RESTART -eq 1 ]; then
        sudo service edatos-internal01 stop
        checkPROC "edatos-internal"
    fi

    # Update Process
    sudo rm -rf $DEPLOY_TARGET_PATH_INTERNAL/complementos-apps
    sudo mv $TRANSFER_PATH/complementos-apps.war $DEPLOY_TARGET_PATH_INTERNAL/complementos-apps.war
    sudo unzip $DEPLOY_TARGET_PATH_INTERNAL/complementos-apps.war -d $DEPLOY_TARGET_PATH_INTERNAL/complementos-apps
    sudo rm -rf $DEPLOY_TARGET_PATH_INTERNAL/complementos-apps.war
    
    # Restore Configuration
    sudo rm -f $DEPLOY_TARGET_PATH_INTERNAL/complementos-apps/WEB-INF/classes/application.properties
    sudo cp $DEMO_ENV/application_internal.properties $DEPLOY_TARGET_PATH_INTERNAL/complementos-apps/WEB-INF/classes/

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
    sudo rm -rf $DEPLOY_TARGET_PATH_EXTERNAL/complementos-apps
    sudo mv $TRANSFER_PATH/complementos-apps.war $DEPLOY_TARGET_PATH_EXTERNAL/complementos-apps.war
    sudo unzip $DEPLOY_TARGET_PATH_EXTERNAL/complementos-apps.war -d $DEPLOY_TARGET_PATH_EXTERNAL/complementos-apps
    sudo rm -rf $DEPLOY_TARGET_PATH_EXTERNAL/complementos-apps.war
    
    # Restore Configuration
    sudo rm -f $DEPLOY_TARGET_PATH_EXTERNAL/complementos-apps/WEB-INF/classes/application.properties
    sudo cp $DEMO_ENV/application_external.properties $DEPLOY_TARGET_PATH_EXTERNAL/complementos-apps/WEB-INF/classes/

    if [ $RESTART -eq 1 ]; then
        sudo chown -R edatos-external.edatos-external /servers/edatos-external        
        sudo service edatos-external01 start
    fi
    
    echo "Finished deploy"
    
EOF