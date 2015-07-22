# require './config/environment'

class Club < ActiveRecord::Base
	has_many :members

end