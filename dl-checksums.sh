#!/usr/bin/env sh
VER=v0.5.3
DIR=~/Downloads
MIRROR=https://github.com/golang/dep/releases/download/$VER


dl()
{
    OS=$1
    PLATFORM=$2
    SUFFIX=${3:-""}
    URL=$MIRROR/dep-${OS}-${PLATFORM}${SUFFIX}.sha256
    printf "# $URL\n"
    printf "$OS-$PLATFORM: sha256:"
    curl -SsL $URL | awk '{print $1}'
}

dl darwin 386
dl darwin amd64
dl freebsd 386
dl freebsd amd64
dl linux 386
dl linux amd64
dl linux arm64
dl linux ppc64
dl linux ppc64le
dl windows 386 .exe
dl windows amd64 .exe

