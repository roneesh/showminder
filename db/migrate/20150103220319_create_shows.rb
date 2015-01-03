class CreateShows < ActiveRecord::Migration
  def change
    create_table :shows do |t|
      t.string :name
      t.string :theater
      t.string :address
      t.string :price
      t.datetime :show_time
      t.text :description

      t.timestamps null: false
    end
  end
end
