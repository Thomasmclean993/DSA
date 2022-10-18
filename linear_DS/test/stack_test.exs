defmodule StackTest do
  use ExUnit.Case

  test "Able to insert an element into the head of the stack" do
    stack = ["Coffee", "Espresso", "Americano", "Macchaito"]

    assert Stack.insert_elem_at_hd(stack, "Cookie") == ["Cookie", "Coffee", "Espresso", "Americano", "Macchaito"]
  end

  test "Able to remove an element from the head of the stack" do
    stack = ["Coffee", "Espresso", "Americano", "Macchaito"]

    assert Stack.remove_elem_at_hd(stack) == "Coffee"
  end
end
