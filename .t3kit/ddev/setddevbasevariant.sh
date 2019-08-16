#!/bin/bash

DDEV_NAME=$( sed -n "s/^name: \(.*\)$/\1/p" .ddev/config.yaml )
bash .t3kit/typo3/addbasevariant.sh "https://$DDEV_NAME.ddev.site"
