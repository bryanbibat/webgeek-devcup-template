class CreateSamples < ActiveRecord::Migration
  def change
    create_table :samples do |t|
      t.string :name
      t.text :content
      t.integer :quantity
      t.decimal :price, scale: 2, precision: 10

      t.timestamps
    end
  end
end
