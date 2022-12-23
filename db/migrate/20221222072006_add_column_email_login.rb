class AddColumnEmailLogin < ActiveRecord::Migration[7.0]
  def up
    add_column :infos, :email, :string
    add_column :infos, :login, :string
  end
  def down
    remove_column :infos, :email
    remove_column :infos, :login
  end
end
