class AddColumn < ActiveRecord::Migration[7.0]
  def up
    add_column :infos, :age, :integer
  end
  def up
    remove_column :infos, :age
  end
end
