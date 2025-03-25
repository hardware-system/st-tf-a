#!/bin/bash

#删除编译文件
if [[ "$CLEAN" == "clean" ]]; then
	rm build/ deploy/ -rf
	exit 0
fi

#运行编译
make -f Makefile.sdk stm32 metadata -j$(($(nproc) + 1))
