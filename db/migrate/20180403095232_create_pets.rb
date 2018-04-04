class CreatePets < ActiveRecord::Migration[5.1]
  def change
    create_table :pets do |t|
      t.string :name
      t.string :description
      t.string :category
      t.boolean :found
      t.string :address

      t.timestamps
    end
  end
end
