# -*- coding: utf-8 -*-
require 'net/http'
require 'csv'

textfile = "anchor_tag.csv"
url = URI.parse('http://www.weblio-inc.jp/wordpress/company/outline/')
req = Net::HTTP::Get.new(url.path)
res = Net::HTTP.start(url.host, url.port) {|http|
  http.request(req)
}
