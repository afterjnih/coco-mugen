# coding: utf-8
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# Price.new(size: 'A5(210×148㍉)', price: 4000, purpose: 'インテリアボード')
Price.create(size: 'A5(210×148㍉)', price: 4000, purpose: 'インテリアボード')
Price.create(size: 'A4(297×210㍉)', price: 8000, purpose: 'ネームボード・ウェルカムボード')
Price.create(size: 'A3(420×297㍉)', price: 16000, purpose: 'メニューボード・ウェルカムボード')
Price.create(size: 'A2(594×420㍉)', price: 32000, purpose: '看板・メニューボード')
Price.create(size: 'A1(841×594㍉)', price: 64000, purpose: '看板・メニューボード')
