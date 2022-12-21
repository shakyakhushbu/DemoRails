class AddColumnOccasion < ActiveRecord::Migration[7.0]
  def up
    add_column :infos, :occasion, :string
  end
  def down 
    remove_column :infos, :occasion
  end
end
