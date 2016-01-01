#!/bin/bash

# grepして、var_dumpという文字列にマッチすれば変数に格納される
greped_var_dump=$(find ./ -name '?*.php' -type f | xargs grep var_dump)
[[ -n $greped_var_dump ]] && {
    echo 'var_dumpが検出されました'
    echo $greped_var_dump

    exit 1
}

echo 'テスト実行'
phpunit --bootstrap bootstrap.php tests/
echo 'テスト完了'
