#!/bin/sh
pushd ~/.nixos-config
home-manager switch -f ./users/coltrez/home.nix
popd
