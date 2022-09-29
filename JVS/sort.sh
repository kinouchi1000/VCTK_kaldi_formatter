#!/bin/bash

# すべてのファイルをソートするツール

train_dir=$1
valid_dir=$2

for path in $(ls ${train_dir}/* ${valid_dir}/*)
do
    sort $path > tmp
    rm $path
    mv tmp $path
done