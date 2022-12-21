class AddColumnOccuptaion < ActiveRecord::Migration[7.0]
  def up
    add_column :infos, :occupation, :string
  end
  def down
    remove_column :infos, :occupation
  end
end
