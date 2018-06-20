class AddUserToFlavors < ActiveRecord::Migration[5.1]
  def change
    add_reference :flavors, :user, foreign_key: true
  end
end
