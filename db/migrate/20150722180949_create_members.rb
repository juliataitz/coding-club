class CreateMembers < ActiveRecord::Migration
	def up
	  create_table :members do |t|
	    t.string :member_first
	    t.string :member_last
	    t.string :member_email
	    t.string :member_size
	    t.string :member_graduation
	  end
	end

	def down
	  drop_table :users
	end
end
