# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


@book = Book.new
@book.name = "君の名は。"
@book.date = 20170514
@book.star = "★★★  "
@book.impression = "二人の主人公が何度も入れ替わり、運命を変えるのが面白かった。"
@book.save

@book = Book.new
@book.name = "エイジ"
@book.date = 20170615
@book.star = "★★★"   
@book.impression = "中学生の主人公エイジの日常生活が面白かった。"
@book.save

@book = Book.new
@book.name = "ネバーギブアップ"
@book.date = 20170716
@book.star = "★★"
@book.impression = "クラスの腕相撲大会で主人公が優勝するまでの話が面白かった。"
@book.save