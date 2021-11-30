#!/bin/sh

export USER_DIR=${USER_DIR:="/usbdrive"}
# PATCH_DIR=${PATCH_DIR:="/usbdrive/Patches"}
# FW_DIR=${FW_DIR:="/root"}
# SCRIPTS_DIR=$FW_DIR/scripts

# should be run from motherhost package installer

mkdir -p $USER_DIR/media/orac/usermodules/utility

cp -r $USER_DIR/Patches/scope $USER_DIR/media/orac/usermodules/utility
rm -r $USER_DIR/Patches/scope

exit 0
