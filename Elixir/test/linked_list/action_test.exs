defmodule LinkedListTest do
  use ExUnit.Case
  alias LinkedList.Action

  test "Basic Functionality" do
    list = ["apples", "kale", "salmon", "ribeye"]
    assert Action.get_first_item(list) == "apples"
    assert Action.remove_first_item(list) == ["kale", "salmon", "ribeye"]
    assert Action.add_item(list, "pizza") == ["apples", "kale", "salmon", "ribeye", "pizza"]
    assert Action.count_items(list) == 4
    assert Action.check_grocceries(list, "kale") == true
  end
end
