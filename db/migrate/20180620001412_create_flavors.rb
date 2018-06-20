class CreateFlavors < ActiveRecord::Migration[5.1]
  def change
    create_table :flavors do |t|
      t.string :grape
      t.string :cherry

      t.timestamps
    end
  end
end
