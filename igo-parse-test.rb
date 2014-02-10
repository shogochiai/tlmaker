#!/usr/bin/env ruby
# -*- coding: utf-8 -*-

mes = ARGV.join(' ') unless ARGV.empty?
mes = "引数にparseしたい文章を入れて起動してね" unless mes

tagger = Igo::Tagger.new('./app/asset/ipadic')

puts tagger.wakati(mes)
tagger.parse(mes).each{|i|
  puts "#{i.surface} #{i.feature} #{i.start}"
}
