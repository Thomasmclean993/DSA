defmodule StackTest do
  use ExUnit.Case


  test "push stack action" do
    list = ["Coffee", "Espresso", "Americano", "Macchaito"]

    assert Stack.push_action(list, "Latte") == [
             "Latte",
             "Coffee",
             "Espresso",
             "Americano",
             "Macchaito"
           ]

    assert Stack.push_action(list, "Cookie") == [
             "Cookie",
             "Coffee",
             "Espresso",
             "Americano",
             "Macchaito"
           ]
  end

  test "pop stack action" do
    list1 = ["Coffee", "Espresso", "Americano", "Macchaito"]
    list2 = ["Coffee", "Espresso", "Americano"]

    assert Stack.pop_action(list1) == "Macchaito"
    assert Stack.pop_action(list2) == "Americano"
    assert Stack.pop_action([]) == {:error, "Emtpy stack is not valid."}
    assert Stack.pop_action("Coffee") == "Coffee"
  end
end
