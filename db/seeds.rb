# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

##################################################################################################
# create admin login credentials
#

admin = User.new(username: 'admin', password: 'test', password_confirmation: 'test')
if admin.valid?
	admin.save
	puts '### -------------------------------------------------------- ###'
	puts '### Admin login credentials successfully written to Database ###'
	puts "### Username: 'admin'                                        ###"
	puts "### Password: 'test'                                         ###"
	puts '###--------------------------------------------------------- ###'
else
	puts 'Failed to write admin credentials to Database.'
end

#
#
##################################################################################################
