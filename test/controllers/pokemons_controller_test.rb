require "test_helper"

class PokemonsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pokemon = pokemons(:one)
  end

  test "should get index" do
    get pokemons_url
    assert_response :success
  end

  test "should get new" do
    get new_pokemon_url
    assert_response :success
  end

  test "should create pokemon" do
    assert_difference("Pokemon.count") do
      post pokemons_url, params: { pokemon: { attack: @pokemon.attack, defence: @pokemon.defence, evolution_chain: @pokemon.evolution_chain, generation_id: @pokemon.generation_id, hp: @pokemon.hp, name: @pokemon.name, special_attack: @pokemon.special_attack, special_defence: @pokemon.special_defence, sprite: @pokemon.sprite, weight: @pokemon.weight } }
    end

    assert_redirected_to pokemon_url(Pokemon.last)
  end

  test "should show pokemon" do
    get pokemon_url(@pokemon)
    assert_response :success
  end

  test "should get edit" do
    get edit_pokemon_url(@pokemon)
    assert_response :success
  end

  test "should update pokemon" do
    patch pokemon_url(@pokemon), params: { pokemon: { attack: @pokemon.attack, defence: @pokemon.defence, evolution_chain: @pokemon.evolution_chain, generation_id: @pokemon.generation_id, hp: @pokemon.hp, name: @pokemon.name, special_attack: @pokemon.special_attack, special_defence: @pokemon.special_defence, sprite: @pokemon.sprite, weight: @pokemon.weight } }
    assert_redirected_to pokemon_url(@pokemon)
  end

  test "should destroy pokemon" do
    assert_difference("Pokemon.count", -1) do
      delete pokemon_url(@pokemon)
    end

    assert_redirected_to pokemons_url
  end
end
