#!/bin/sh

TRANSFER_PATH=complementos-apps/tmp
DEPLOY_TARGET_PATH=/servers/metamac/tomcats/metamac01/webapps

RESTART=1

if [ "$1" == "--no-restart" ]; then
    RESTART=0
fi

scp -r target/complementos-apps-*.war deploy@estadisticas.arte-consultores.com:$TRANSFER_PATH/complementos-apps.war

ssh deploy@estadisticas.arte-consultores.com <<EOF

    if [ $RESTART -eq 1 ]; then
        sudo service metamac01 stop
    fi

    # Update Process
    sudo rm -rf $DEPLOY_TARGET_PATH/complementos-apps
    sudo mv $TRANSFER_PATH/complementos-apps.war $DEPLOY_TARGET_PATH/complementos-apps.war
    sudo unzip $DEPLOY_TARGET_PATH/complementos-apps.war -d $DEPLOY_TARGET_PATH/complementos-apps
    sudo rm -rf $DEPLOY_TARGET_PATH/complementos-apps.war

    if [ $RESTART -eq 1 ]; then
        sudo chown -R metamac.metamac /servers/metamac
        sudo service metamac01 start
    fi
    
    echo "Finished deploy"
    
EOF