class CreatePokemonTypesJoinTable < ActiveRecord::Migration[7.0]
  def change
    create_join_table :pokemon, :types do |t|
    t.index :pokemon_id
    t.index :type_id
  end
  end
end
