defmodule LinkedListTest do
  use ExUnit.Case
  # doctest LinkedList

  test "Basic Functionality" do
    list = ["apples", "kale", "salmon", "ribeye"]
    assert LinkedList.get_first_item(list) == "apples"
    assert LinkedList.remove_first_item(list) == ["kale", "salmon", "ribeye"]
    assert LinkedList.add_item(list, "pizza") == ["apples", "kale", "salmon", "ribeye", "pizza"]
    assert LinkedList.count_items(list) == 4
    assert LinkedList.check_grocceries(list, "kale") == true
  end
end
