#!/bin/bash -e

ROOTFS=`pwd`
BINARY=$ROOTFS/binary
VERSION=`strings ../out/kernel/Image | grep -o "Linux version *[^ ]*" | grep -o "[^ ]*$"`
MODULES=$BINARY/lib/modules/$VERSION
FIRMWARE=$BINARY/lib/firmware/$VERSION

echo Copying "$VERSION" modules...

if [ -e $MODULES ]; then
    sudo rm -r $MODULES
fi
sudo mkdir -p $MODULES
cd ..
sudo cp --parents `find ./kernel -name "*.ko"` $MODULES
sudo sh -c "find $MODULES -name '*.ko' | xargs aarch64-linux-gnu-strip --strip-debug --preserve-dates"
sudo cp -p ./kernel/modules.* $MODULES
sudo depmod -b "$BINARY" -F ./kernel/System.map $VERSION
cd $ROOTFS

if [ -e $FIRMWARE ]; then
    sudo rm -r $FIRMWARE
fi
sudo mkdir -p $FIRMWARE
cd ../kernel/firmware
sudo cp --parents `find . \( -name "*.fw" -o -name "*.bin" \)` $FIRMWARE
cd $ROOTFS
