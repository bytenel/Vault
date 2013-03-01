# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.create(:email => 'chris@vaultrms.com', :password => 'password', :name => 'Chris Memmott', :department => 'Example Department')
User.create(:email => 'ben@vaultrms.com', :password => 'password', :name => 'Ben Nelson', :department => 'Example Department')
