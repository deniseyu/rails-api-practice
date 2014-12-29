require 'test_helper'

class CreatingPokemonTest < ActionDispatch::IntegrationTest

  test 'creates a new Pokemon' do
    post '/pokemons',
    { pokemon:
      { name: 'Charizard', number: 6, description: 'Flame Pokemon', type_one: 'Fire', type_two: 'Dragon' }
    }.to_json,
    { 'Accept' => Mime::JSON, 'Content-Type' => Mime::JSON.to_s }

    assert_equal 201, response.status
    assert_equal Mime::JSON, response.content_type
  end

  test 'does not create Pokemon with missing name' do
    post '/pokemons',
    { pokemon:
      { name: nil, number: 6, description: 'Flame Pokemon', type_one: 'Fire', type_two: 'Dragon' }
    }.to_json,
    { 'Accept' => Mime::JSON, 'Content-Type' => Mime::JSON.to_s }

    assert_equal 422, response.status
    assert_equal Mime::JSON, response.content_type
  end

end
