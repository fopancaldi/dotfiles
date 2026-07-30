#!/bin/bash

source /etc/os-release
if [[ "$NAME" != *"Linux"* ]]; then
    echo "Scripts must be run on Linux"
    exit 1
fi
