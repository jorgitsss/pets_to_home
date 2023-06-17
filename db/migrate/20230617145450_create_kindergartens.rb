class CreateKindergartens < ActiveRecord::Migration[7.0]
  def change
    create_table :kindergartens do |t|
      t.string :name
      t.string :description
      t.string :photo
      t.integer :id_cities
      t.decimal :price
      t.integer :phone
      t.boolean :published
      t.integer :id_proprietaries

      t.timestamps
    end
  end
end
