#!/usr/bin/env bash

if command -v fd &> /dev/null; then
    fd -e nix -x nixfmt {}
else
    find . -name "*.nix" -type f -exec nixfmt {} \;
fi
