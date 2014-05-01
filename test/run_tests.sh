#!/bin/sh

EXE_NAME='test-cmp'
CC=clang
CFLAGS="--std=c89 -Werror -Wall -Wextra"
CFLAGS="$CFLAGS -funsigned-char"
CFLAGS="$CFLAGS -fwrapv"
CFLAGS="$CFLAGS -Wmissing-format-attribute"
CFLAGS="$CFLAGS -Wpointer-arith"
CFLAGS="$CFLAGS -Wformat-nonliteral"
CFLAGS="$CFLAGS -Winit-self"
CFLAGS="$CFLAGS -Wwrite-strings"
CFLAGS="$CFLAGS -Wshadow"
CFLAGS="$CFLAGS -Wenum-compare"
CFLAGS="$CFLAGS -Wempty-body"
CFLAGS="$CFLAGS -Wsizeof-array-argument"
CFLAGS="$CFLAGS -Wstring-conversion"
CFLAGS="$CFLAGS -Wparentheses"
CFLAGS="$CFLAGS -Wcast-align"
CFLAGS="$CFLAGS -Wstrict-aliasing"
CFLAGS="$CFLAGS --pedantic-errors"
CFLAGS="$CFLAGS -g"

$CC $CFLAGS -I../ -o $EXE_NAME ../cmp.c buf.c utils.c test.c || exit -1

# gdb -ex run --args ./$EXE_NAME
./$EXE_NAME
