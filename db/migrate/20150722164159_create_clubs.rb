class CreateClubs < ActiveRecord::Migration
	def up
	    create_table :clubs do |t|
	      t.string :leader_first
	      t.string :leader_last
	      t.string :leader_email
	      t.string :leader_size
	      t.string :leader_graduation
	      t.string :school_name
	      t.string :school_road
	      t.string :school_city
	      t.string :school_state
	      t.string :school_zip
	   end
	 end

  def down
    drop_table :tweets
  end

end
