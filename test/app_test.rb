require_relative "test_helper"

class AppTest < Minitest::Test
  include Rack::Test::Methods

  def setup
  end


  def app
    App
  end

  def test_has_a_root_route
    response = get "/"
    assert response.ok?
  end

  def test_root_path_loads_list_entry_point
    list = List.create(name: ["Groceries"])
    response = get "/"
    assert_includes response.body, "Groceries"

  end

  def test_can_show_current_items
  end

  def test_can_add_new_items_to_list
  end

  def test_items_can_have_same_name_diff_id
  end

  def test_can_update_end_date_of_item
  end

  def test_items_can_be_marked_as_complete
  end

  def test_can_display_random_item_existing_on_list
  end

  def teardown
  end
end
