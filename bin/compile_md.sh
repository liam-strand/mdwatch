#!/bin/sh

pandoc -o "${1:gs/.md/.pdf}" "$1"
