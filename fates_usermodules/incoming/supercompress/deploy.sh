#!/bin/sh

export USER_DIR=${USER_DIR:="/usbdrive"}
# PATCH_DIR=${PATCH_DIR:="/usbdrive/Patches"}
# FW_DIR=${FW_DIR:="/root"}
# SCRIPTS_DIR=$FW_DIR/scripts

# should be run from motherhost package installer

mkdir -p $USER_DIR/media/orac/usermodules/fx

cp -r $USER_DIR/Patches/supercompress $USER_DIR/media/orac/usermodules/fx
rm -r $USER_DIR/Patches/supercompress

exit 0
