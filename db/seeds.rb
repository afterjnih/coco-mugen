# coding: utf-8
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# Price.new(size: 'A5(210×148㍉)', price: 4000, purpose: 'インテリアボード')
Price.delete_all
Price.create(size: 'A5(21.0×14.8cm)', price: 4000, purpose: 'インテリアボード')
Price.create(size: 'A4(29.7×21.0cm)', price: 8000, purpose: 'ネームボード・ウェルカムボード')
Price.create(size: 'A3(42.0×29.7cm)', price: 16000, purpose: 'メニューボード・ウェルカムボード')
Price.create(size: 'A2(59.4×42.0cm)', price: 32000, purpose: '看板・メニューボード')
Price.create(size: 'A1(84.1×59.4cm)', price: 64000, purpose: '看板・メニューボード')
