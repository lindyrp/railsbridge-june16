class CreatePenguins < ActiveRecord::Migration
  def change
    create_table :penguins do |t|
      t.string :name
      t.float  :age
      t.boolean :furry
      t.timestamps null: false
    end
  end
end
