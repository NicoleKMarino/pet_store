class AddUserToStores < ActiveRecord::Migration
  def change
    add_reference :stores, :user, index: true
  end
end
