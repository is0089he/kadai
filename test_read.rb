#!/usr/bin/ruby
# -*- coding: utf-8 -*-
require 'csv'
#
#  バブルソート
#
class Array
  def bubble_sort!
    # 配列のコピー
    array = self.dup
    # 配列の長さ分繰り返す
    (length-1).times do
      (length-1).times do |i|
        # 隣の要素と比較して入れ替える
        if array[i] > array[i+1]
          array[i + 1], array[i] = array[i], array[i + 1]
        end
      end
    end
    #元の配列をソート済みの配列に置き換える
    self.replace(array)
  end
end

p [10,2,5,3,6,9,1,4,7,8].bubble_sort!
# => [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

class SortByMedal
    # 一行ずつ読み込む
    arr = CSV.read("list.csv")
    newarr = arr.map { |a,b,c,d| [a,b.to_i,c.to_i,d.to_i] }
    p newarr

    for i in 0..(newarr.size-1)
        arrs = newarr[i][1]
        for j in 0..3
            print newarr[i][j],"\n"
        end
    end
end
