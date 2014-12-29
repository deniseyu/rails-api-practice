json.array!(@pokemons) do |pokemon|
  json.extract! pokemon, :id, :name, :number, :description, :type_one, :type_two
  json.url pokemon_url(pokemon, format: :json)
end
