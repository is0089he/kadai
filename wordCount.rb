# -*- coding: utf-8 -*-
require 'csv'

class SortByMedal
    # 一行ずつ読み込む
    arr = CSV.read("name_data.tsv")
    count_by_gosanke = arr.inject(Hash.new(0)) { |r, e| r[e] += 1; r }

    count_by_gosanke.each do |elm1, elm2|
      print elm1, "\t",elm2, "\n"
    end
end