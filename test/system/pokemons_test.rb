require "application_system_test_case"

class PokemonsTest < ApplicationSystemTestCase
  setup do
    @pokemon = pokemons(:one)
  end

  test "visiting the index" do
    visit pokemons_url
    assert_selector "h1", text: "Pokemons"
  end

  test "should create pokemon" do
    visit pokemons_url
    click_on "New pokemon"

    fill_in "Attack", with: @pokemon.attack
    fill_in "Defence", with: @pokemon.defence
    fill_in "Evolution chain", with: @pokemon.evolution_chain
    fill_in "Generation", with: @pokemon.generation_id
    fill_in "Hp", with: @pokemon.hp
    fill_in "Name", with: @pokemon.name
    fill_in "Special attack", with: @pokemon.special_attack
    fill_in "Special defence", with: @pokemon.special_defence
    fill_in "Sprite", with: @pokemon.sprite
    fill_in "Weight", with: @pokemon.weight
    click_on "Create Pokemon"

    assert_text "Pokemon was successfully created"
    click_on "Back"
  end

  test "should update Pokemon" do
    visit pokemon_url(@pokemon)
    click_on "Edit this pokemon", match: :first

    fill_in "Attack", with: @pokemon.attack
    fill_in "Defence", with: @pokemon.defence
    fill_in "Evolution chain", with: @pokemon.evolution_chain
    fill_in "Generation", with: @pokemon.generation_id
    fill_in "Hp", with: @pokemon.hp
    fill_in "Name", with: @pokemon.name
    fill_in "Special attack", with: @pokemon.special_attack
    fill_in "Special defence", with: @pokemon.special_defence
    fill_in "Sprite", with: @pokemon.sprite
    fill_in "Weight", with: @pokemon.weight
    click_on "Update Pokemon"

    assert_text "Pokemon was successfully updated"
    click_on "Back"
  end

  test "should destroy Pokemon" do
    visit pokemon_url(@pokemon)
    click_on "Destroy this pokemon", match: :first

    assert_text "Pokemon was successfully destroyed"
  end
end
