#!/usr/bin/env sh
DIR=~/Downloads
MIRROR=https://github.com/golang/dep/releases/download

dl()
{
    local ver=$1
    local os=$2
    local arch=$3
    local suffix=${4:-}
    local platform="${os}-${arch}"
    local url=$MIRROR/$ver/dep-${platform}${suffix}.sha256
    printf "    # %s\n" $url
    printf "    %s: sha256:%s\n" $platform $(curl -SsL $url | awk '{print $1}')
}

dl_ver() {
    local ver=$1
    printf "  %s:\n" $ver
    dl $ver darwin 386
    dl $ver darwin amd64
    dl $ver freebsd 386
    dl $ver freebsd amd64
    dl $ver linux 386
    dl $ver linux amd64
    dl $ver linux arm64
    dl $ver linux ppc64
    dl $ver linux ppc64le
    dl $ver windows 386 .exe
    dl $ver windows amd64 .exe
}

dl_ver ${1:-v0.5.4}
