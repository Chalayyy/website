require "test_helper"

class PokemonControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get pokemon_index_url
    assert_response :success
  end

  test "should get new" do
    get pokemon_new_url
    assert_response :success
  end

  test "should get create" do
    get pokemon_create_url
    assert_response :success
  end
end
