defmodule QueueTest do
  use ExUnit.Case

  test "Push an item into the final index of the queue" do
    queue = ["Coffee", "Espresso", "Americano", "Macchaito"]

    assert Queue.insert_elem_at_tl(queue, "Cookie") == [
    "Coffee",
    "Espresso",
    "Americano",
    "Macchaito",
    "Cookie"
  ]
  end

  test "Pull an item from the zero index of te queue" do
    queue = ["Cookie", "Coffee", "Espresso", "Americano", "Macchaito"]

    assert Queue.remove_elem_at_hd(queue) == "Cookie"
  end
end
