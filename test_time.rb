# -*- coding: utf-8 -*-
require 'csv'

class TimeComparison
    # 一行ずつ読み込む
    arr = CSV.read("name_data.tsv")
    hour1 = arr[0].to_s[2,2]


    t = Time.now
    print(t.hour, ":", t.min, ":", t.sec, "\n")

    t_future = Time.new(2015,9,30,15,30,30)
    print(t_future.hour, ":", t_future.min, ":", t_future.sec, "\n")

    ss_now = t.hour * 3600 + t.min * 60 + t.sec
    ss_future = t_future.hour * 3600 + t_future.min * 60 + t_future

    print ss_future


    if hoge
        print("The former is ", t_future.hour, "[hr]", t_future.min, "[min]", t_future.sec, "[ss] sec ahead\n")
    else
        print("The former is ", t, "[hr]", t, "[min]", t.sec, "[ss] sec ahead\n")
    end
end
