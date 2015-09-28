# -*- coding: utf-8 -*-
require 'csv'

class SortByMedal
    # 一行ずつ読み込む
    arr = CSV.read("medal_results.tsv", 'r:UTF-8', col_sep: "\t")
    newarr = arr.map { |a,b,c,d| [a,b.to_i,c.to_i,d.to_i] }

    sorted = newarr.sort {|a, b|
    if a[1] == b[1] then
      if a[2] == b[2] then
        if a[3] == b[3] then
            b[0] <=> a[0]
        end
      else
        b[3] <=> a[3]
      end
      b[2] <=> a[2]
    else
        b[1] <=> a[1]
    end
    }
    print "国", "\t","金", "\t","銀", "\t","銅", "\n"
    sorted.each do |elm1, elm2, elm3,elm4|
      print elm1, "\t",elm2, "\t",elm3, "\t",elm4, "\n"
    end
end