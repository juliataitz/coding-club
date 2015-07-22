# require './config/environment'

class Member < ActiveRecord::Base
	belongs_to :club

end