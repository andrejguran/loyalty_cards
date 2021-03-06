class CreateCards < ActiveRecord::Migration
  def self.up
    create_table :cards do |t|
      t.string :title
      t.decimal :price
      t.text :description
      t.string :image_url
      t.timestamps
    end
  end

  def self.down
    drop_table :cards
  end
end
