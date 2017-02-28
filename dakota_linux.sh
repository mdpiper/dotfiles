#!/usr/bin/env bash
# Add these lines to .bashrc after installing Dakota.

# Set up Dakota.
export DAKOTA_DIR=/usr/local/dakota
PATH=$PATH:$DAKOTA_DIR/bin:$DAKOTA_DIR/test
if [ $LD_LIBRARY_PATH ]; then
    export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$DAKOTA_DIR/bin:$DAKOTA_DIR/lib
else
    export LD_LIBRARY_PATH=$DAKOTA_DIR/bin:$DAKOTA_DIR/lib
fi
