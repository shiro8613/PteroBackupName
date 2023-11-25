#!/bin/bash

if (( $EUID != 0 )); then
    echo "Please run as root"
    exit
fi


echo "Install Start"
cd ..
php artisan down
cp resources/scripts/components/server/backups/BackupContextMenu.tsx PteroBackupName/Origin.tsx
cp PteroBackupName/BackupContextMenu.tsx resources/scripts/components/server/backups/BackupContextMenu.tsx

yarn

export NODE_OPTIONS=--openssl-legacy-provider
yarn build:production
php artisan optimize:clear
php artisan up
