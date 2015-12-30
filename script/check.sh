#!/bin/bash

n=$(ag --file-search-regex '.*\.php' var_dump | tee /dev/tty | wc -l)
[[ $n >= 1 ]] && {
    echo "var?dumpが検出された" 1>&2
    exit 1
}

echo 'テスト実行'
phpunit --bootstrap bootstrap.php tests/
echo 'テスト完了'
