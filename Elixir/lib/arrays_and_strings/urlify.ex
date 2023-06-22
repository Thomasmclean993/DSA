defmodule ArraysAndStrings.Urlify do
@moduledoc """
Write a algorithm that replaces all empty spaces with %20.
You can safely assume that the string will have plenty of space for addition characters

"""
  def convert_string(string) do
    String.replace(string, " ", "%20")
  end

end
