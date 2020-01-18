class CreateShows < ActiveRecord::Migration
  def change
    create_table :shows do |t|
      t.string :title
      t.integer :channel_id
      t.boolean :favorite, default: false

      t.timestamps null: false
    end
  end
end
