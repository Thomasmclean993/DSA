defmodule Queue do
  @moduledoc """
  A queue are defined as a linear DS that is open on both sides
  and the operations are performed in First in First Out (FIFO).
  We define queue to be list in which all additions to the
  list are made at one end,
  and all deletions from the list are made at the end.
  The element which first pushed into the order,
  the operation is first performed on that.
  EQ = insert into the tail
  DQ = remove at head
  """

  def create_queue(queue) do
    ["Coffee", "Espresso", "Americano", "Macchaito"]
  end

  def insert_elem_at_tl(queue, item) do
    queue ++ [item]
  end

  def remove_elem_at_hd(queue) do
    hd(queue)
  end
end
