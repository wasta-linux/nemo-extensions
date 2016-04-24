#!/bin/sh

srcdir=`dirname $0`
test -z "$srcdir" && srcdir=.

[ ! -d m4 ] && mkdir m4
[ ! -d build-aux ] && mkdir build-aux

PKG_NAME="nemo"

which gnome-autogen.sh || {
    echo "You need to install gnome-common from GNOME Git (or from"
    echo "your OS vendor's package manager)."
    exit 1
}
USE_GNOME2_MACROS=1 USE_COMMON_DOC_BUILD=yes . gnome-autogen.sh