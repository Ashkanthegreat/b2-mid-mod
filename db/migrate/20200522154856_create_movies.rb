class CreateMovies < ActiveRecord::Migration[5.1]
  def change
    create_table :movies do |t|
      t.string :title
      t.string :creation_yearrail
      t.string :genre

      t.timestamps
    end
  end
end
