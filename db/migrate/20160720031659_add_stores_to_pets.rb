class AddStoresToPets < ActiveRecord::Migration
  def change
    add_reference :pets,:stores, index: true
  end
end
