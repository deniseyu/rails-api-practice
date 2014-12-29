require 'test_helper'

class PokemonTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test 'should save a new Pokemon with a name' do
    pikachu = Pokemon.new(name: 'Pikachu')
    assert pikachu.save, "Pikachu successfully saved"
  end

  test 'should not save without a name' do
    anon = Pokemon.new
    assert_not anon.save, "Saved Pokemon without a name"
  end

  test 'should not save two Pokemon with the same name' do
    pikachu = Pokemon.create(name: 'Pikachu')
    pikachu2 = Pokemon.new(name: 'Pikachu')
    assert_not pikachu2.save, "Saved Pokemon with duplicate name"
  end

end
