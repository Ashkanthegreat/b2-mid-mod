class ChangeColumnName < ActiveRecord::Migration[5.1]
  def change
    rename_column :movies, :creation_yearrail, :creation_year
  end
end
