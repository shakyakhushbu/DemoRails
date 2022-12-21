class AddColumnPlace < ActiveRecord::Migration[7.0]
  def up
    add_column :infos, :place, :string
  end
  def down
    remove_column :infos, :place
  end
end
