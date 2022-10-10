defmodule LinkedList do
  @moduledoc """
  Documentation for `Dsa`.
  1. get first item
  2. remove first item
  3. add item
  4. remove item
  5. Count the number of items
  6. check list for items
  """


  def new_grocceries("empty"), do: []
  def new_grocceries("full"), do: ["apples", "kale", "salmon", "ribeye"]

  def get_first_item(list), do: hd(list)
  def remove_first_item(list), do: tl(list)
  def add_item(list, new_item), do: list ++ [new_item]
  def count_items(list), do: length(list)
  def check_grocceries(list, item), do: item in list
end
