defmodule ArraysAndStrings.UniqueTest do

  use ExUnit.Case, async: true
  alias ArraysAndStrings.Unique

  describe "is_unique/1" do
    test "returns true if the string only have unique characters" do

      assert true == Unique.eval_chars?("red")
      assert false == Unique.eval_chars?("green")
      assert false == Unique.eval_chars?("Tokimonsta")
      assert false == Unique.eval_chars?("Aura")
      assert true == Unique.eval_chars?("views")
    end
  end
end
