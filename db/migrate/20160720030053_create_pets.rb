class CreatePets < ActiveRecord::Migration
  def change
    create_table :pets do |t|
      t.string :name
      t.string :gender
      t.string :breed
      t.integer :adoption_fee
    end
  end
end
