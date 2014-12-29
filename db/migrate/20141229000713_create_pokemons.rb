class CreatePokemons < ActiveRecord::Migration
  def change
    create_table :pokemons do |t|
      t.string :name
      t.integer :number
      t.string :description
      t.string :type_one
      t.string :type_two

      t.timestamps
    end
  end
end
