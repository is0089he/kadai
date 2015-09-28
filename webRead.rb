# -*- coding: utf-8 -*-
require "open-uri"
require 'kconv'

url = "http://www.weblio-inc.jp/wordpress/company/outline/"
filename = "anchor_tag.html"
textfile = "anchor_tag.txt"

# urlの読み込み、書き出し
File.open(filename , :encoding => Encoding::UTF_8) do |f|
    text = open(url).read
    f.write text
end

# 書き出しファイルの読み込み
html = File.read(filename)

# 読み込みファイルからの抽出、書き出し
File.open(textfile ,:encoding => Encoding::UTF_8) do |f|
    headinfo = true
    html.each_line do |line|
        if headinfo && /<meta/ !~ line
            # && 左辺がtrueだった場合に、右辺を評価する
            # !~ 正規表現のメソッド。=!の否定。マッチが失敗したらtrueを返す
            next
        else
            headinfo = false
        end
        break if /<\/head>/ =~ line
        # =~ 正規表現のメソッド。正規表現と文字列をマッチさせる。
        # </head>で処理を終了
        f.write line
    end
end