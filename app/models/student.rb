require_relative '../../db/config'
require "date"
require 'byebug'

class Student < ActiveRecord::Base
	validates :email, uniqueness:true,  :format => { :with => /\w+[@]\w+[.][a-z]{2,}/,
    message: "only allows letters" }
    validates :phone, :format=> 
    { :with => /1?\W*([2-9][0-8][0-9])\W*([2-9][0-9]{2})\W*([0-9]{4})(\se?x?t?(\d*))?/}  


    validates :age, :numericality => { :greater_than => 5}

# implement your Student model here
	def name
		return first_name + " " + last_name
	end

	def age
		now = Date.today.year
		age = now-self.birthday.year
	end

end
