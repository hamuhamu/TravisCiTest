#!/bin/bash

n=$(find ./ -name '?*.php' -type f | xargs grep var_dump | wc -l)
[[ $n -ge 1 ]] && {
    echo "var?dumpが検出された" 1>&2
    exit 1
}

echo 'テスト実行'
phpunit --bootstrap bootstrap.php tests/
echo 'テスト完了'
