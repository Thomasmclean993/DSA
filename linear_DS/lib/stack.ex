defmodule Stack do
  @moduledoc """
  A stack or LIFO(Last in, first out) is an abstract data type that serves as collection of elements,
  with two principle operations: push, which adds an element to the collection, and pop,
  which removes the last element that was added.
  In stack both the operations of push and pop take place at the same end that is top of the stack.
  It can be implemented by using both array and linked list.
  """
  def insert_elem_at_hd(stack, elem) do
    [elem] ++ stack
  end

  def remove_elem_at_hd(stack) do
    hd(stack)
  end
end
