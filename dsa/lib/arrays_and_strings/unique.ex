defmodule ArraysAndStrings.Unique do
@moduledoc """
Implement an algorithm that determines if all the characters in
string are unique. Only arrays and strings are allowed

"""
  def eval_chars?(string) do
    lowercase_string = String.downcase(string)

    char_list = split_char(lowercase_string)
    uniq_char_list = Enum.uniq(char_list)

    if char_list == uniq_char_list do
      true
    else
      false
    end
  end

  defp split_char(string) do
    string
    |> String.split("")
    |> Enum.reject(fn x -> x == "" end)
  end
end
