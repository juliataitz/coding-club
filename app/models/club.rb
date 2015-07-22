require './config/environment'

class Club < ActiveRecord::Base
	
	# attr_accessor :leader_first, :leader_last, :leader_email, :leader_size, :leader_graduation, :school_name, :school_road, :school_city, :school_state, :school_zip

	def initialize(leader_first, leader_last, leader_email, leader_size, leader_graduation, school_name, school_road, school_city, school_state, school_zip)
	# def initialize(leader_first)
		@leader_first = leader_first
		@leader_last = leader_last
		@leader_email = leader_email
		@leader_size = leader_size
		@leader_graduation = leader_graduation
		@school_name = school_name
		@school_road = school_road
		@school_city = school_city
		@school_state = school_state
		@school_zip = school_zip
	end

end