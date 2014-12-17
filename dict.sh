#!/bin/sh
curl -sd "p=$1" http://tw.dictionary.yahoo.com/search | awk "/pexplain/{ print }/peng/{ print }/pchi/{ print ; print \"\n\" }" | sed -e :a -e 's/<[^>]*>//g;/</N;//ba'
# Author: reborn2266
# BBS Board Name: shell
# Topic: 簡單的文字介面線上字典script
# Time: Wed Dec  6 10:04:15 2006
# cf2. http://blog.longwin.com.tw/2007/01/y_dictionary_script_2007/
