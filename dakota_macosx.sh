#!/usr/bin/env bash
# Add these lines to .bash_profile after installing Dakota.

# Set up Dakota.
DAKOTA_VERSION=6.1.0
export DAKOTA_DIR=/usr/local/dakota-$DAKOTA_VERSION.Darwin.i386
PATH=$PATH:$DAKOTA_DIR/bin:$DAKOTA_DIR/test
if [ $DYLD_LIBRARY_PATH ]; then
    export DYLD_LIBRARY_PATH=$DYLD_LIBRARY_PATH:$DAKOTA_DIR/bin:$DAKOTA_DIR/lib
else
    export DYLD_LIBRARY_PATH=$DAKOTA_DIR/bin:$DAKOTA_DIR/lib
fi
