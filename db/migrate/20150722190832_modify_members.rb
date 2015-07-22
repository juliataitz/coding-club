class ModifyMembers < ActiveRecord::Migration
  def up
    add_column :members, :club_id, :integer
  end

  def down
    remove_column :members, :club_id, :integer
  end
end
