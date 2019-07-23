#!/bin/sh

HOME_PATH=apache-estadisticas
TRANSFER_PATH=$HOME_PATH/tmp
DEPLOY_TARGET_PATH_ESTADISTICAS=/servers/estadisticas

scp -r demos/guimar/complementos-apps deploy@estadisticas.arte-consultores.com:$TRANSFER_PATH/complementos-apps

ssh deploy@estadisticas.arte-consultores.com <<EOF

	# Complementos-apps
    sudo rm -rf $DEPLOY_TARGET_PATH_ESTADISTICAS/complementos-apps
	sudo mv $TRANSFER_PATH/complementos-apps $DEPLOY_TARGET_PATH_ESTADISTICAS/complementos-apps
	sudo chown www-data.www-data -R $DEPLOY_TARGET_PATH_ESTADISTICAS/complementos-apps

    echo "Finished deploy"
    
EOF