# -*- coding: utf-8 -*-
require "open-uri"
require 'kconv'
require 'csv'

url = "http://www.weblio-inc.jp/wordpress/company/outline/"
filename = "anchor_tag.html"
textfile = "anchor_tag.csv"

# urlの読み込み、書き出し
File.open(filename,"w") do |f|
    text = open(url).read
    f.write text
end

# 書き出しファイルの読み込み
html = File.read(filename,:encoding => Encoding::UTF_8)

# 読み込みファイルからの抽出、書き出し
File.open(textfile,"w") do |f|
    html.each_line do |line|

        # アンカータグの正規表現
        # .* : なんでも良い文字の連続
        if /<a\shref.*a>/ =~ line
            f.write $&
            f.write "\n"

        end
    end
end
