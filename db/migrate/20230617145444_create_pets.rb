class CreatePets < ActiveRecord::Migration[7.0]
  def change
    create_table :pets do |t|
      t.string :name
      t.string :type
      t.string :size
      t.string :gender
      t.integer :id_users
      t.integer :id_cities

      t.timestamps
    end
  end
end
