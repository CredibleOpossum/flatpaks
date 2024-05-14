#!/usr/bin/env bash

export app_id=$(ls *.yml | sed 's/\.[^.]*$//')

flatpak-builder --force-clean --repo=repo build *.yml
flatpak remote-modify --collection-id=$app_id flathub
flatpak build-bundle repo app.flatpak $app_id
