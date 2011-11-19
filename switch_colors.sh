#!/bin/sh

# Solarized palette
base03="#002b36"
base02="#073642"
base01="#586e75"
base00="#657b83"
base0="#839496"
base1="#93a1a1"
base2="#eee8d5"
base3="#fdf6e3"
yellow="#b58900"
orange="#cb4b16"
red="#dc322f"
magenta="#d33682"
violet="#6c71c4"
blue="#268bd2"
cyan="#2aa198"
green="#859900"

tmp1=`tempfile`
tmp2=`tempfile`

for f in $1; do

    cp $f $tmp1
    fn=`basename $f .svg`

    sed s/$base03/$base3/gi <$tmp1 >$tmp2
    sed s/$base02/$base2/gi <$tmp2 >$tmp1
    sed s/$base0/$base00/gi  <$tmp1 >$tmp2
    sed s/$base1/$base01/gi <$tmp2 >$tmp1

    cp $tmp1 ${fn}_light.svg

done

