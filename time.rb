# -*- coding: utf-8 -*-
require 'csv'

class TimeComparison
    # 一行ずつ読み込む
    arr = CSV.read("time_data.tsv")
    hour1 = arr[0].to_s[2,2]
    hour2 = arr[1].to_s[2,2]

    min1 = arr[0].to_s[5,2]
    min2 = arr[1].to_s[5,2]

    sec1 = arr[0].to_s[8,2]
    sec2 = arr[1].to_s[8,2]

    time1 = hour1.to_i * 3600 + min1.to_i * 60 + sec1.to_i
    time2 = hour2.to_i * 3600 + min2.to_i * 60 + sec2.to_i

    if time1 > time2 then
        result = time1 - time2
        print Time.at(result).utc.strftime("The former is %H, [hh] %M [min] %S [ss] sec ahead"),"\n"
    elsif time1 < time2 then
        result = time2 - time1
        print Time.at(result).utc.strftime("The former is %H, [hh] %M [min] %S [ss] sec ago"),"\n"
    else print ("The former and the latter are the same")
    end
end
