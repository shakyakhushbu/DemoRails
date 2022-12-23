class AddDefaultVAlue < ActiveRecord::Migration[7.0]
  def up
    change_column_default :infos, :place, 'India'
  end
end
