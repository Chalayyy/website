class CreatePokemon < ActiveRecord::Migration[7.0]
  def change
    create_table :pokemon do |t|
      t.text :name
      t.timestamps
    end
  end
end
