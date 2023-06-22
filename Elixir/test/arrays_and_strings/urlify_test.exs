defmodule ArraysAndStrings.UrlifyTest do

  use ExUnit.Case, async: true
  alias ArraysAndStrings.Urlify

  describe "is_unique/1" do
    test "returns true if the string only have unique characters" do

      assert "good%20bye" == Urlify.convert_string("good bye")
      assert "All%20WE%20NEED" == Urlify.convert_string("All WE NEED")
      assert "a%20b%20c%20d%20e%20f%20g%20h%20" == Urlify.convert_string("a b c d e f g h ")

    end
  end
end
