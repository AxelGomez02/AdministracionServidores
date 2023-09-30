#!/bin/bash

if curl https://www.google.com &> /dev/null; then
    exit 0;
    else
    exit 1
    fi
