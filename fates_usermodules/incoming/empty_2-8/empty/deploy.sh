#!/bin/sh

export USER_DIR=${USER_DIR:="/usbdrive"}
# PATCH_DIR=${PATCH_DIR:="/usbdrive/Patches"}
# FW_DIR=${FW_DIR:="/root"}
# SCRIPTS_DIR=$FW_DIR/scripts

# should be run from motherhost package installer

mkdir -p $USER_DIR/media/orac/usermodules
mkdir -p $USER_DIR/data/orac/presets

cp -r $USER_DIR/Patches/empty/empty $USER_DIR/data/orac/presets
rm -r $USER_DIR/Patches/empty/empty

cp -r $USER_DIR/Patches/empty $USER_DIR/media/orac/usermodules
rm -r $USER_DIR/Patches/empty

exit 0
