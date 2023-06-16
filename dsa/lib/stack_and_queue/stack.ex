defmodule Stack do
  @moduledoc """
  A stack or LIFO(Last in, first out) is an abstract data type that serves as collection of elements,
  with two principle operations: push, which adds an element to the collection,
  and pop, which removes the last element that was added. In stack both the operations of push and pop take place at the same end that is top of the stack.
  It can be implemented by using both array and linked list
  """

  def push_action(list, string), do: [string] ++ list

  def pop_action(list) when list == [], do: {:error, "Emtpy stack is not valid."}
  def pop_action(list) when is_bitstring(list), do: list

  def pop_action(list) do
    with {:ok, num_of_items} <- count_items(list),
         {:ok, index} <- convert_to_index(num_of_items),
         {:ok, {popped_elem, _tail}} <- pop_last_elem(list, index) do
      popped_elem
    end
  end


  defp count_items(list), do: {:ok, Enum.count(list)}
  defp convert_to_index(num), do: {:ok, num - 1}
  defp pop_last_elem(list, index) do
    {element, _tail} = List.pop_at(list, index)

    element
  end
end
