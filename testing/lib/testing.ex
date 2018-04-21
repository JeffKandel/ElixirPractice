defmodule Testing do
  @moduledoc """
    transforming some string

    Examples:

    iex> Testing.uppercase("this is an example")
    "this IS an EXAMPLE"

    iex> Testing.unvowel("this is an example")
    "this s an xmpl"

  """
  def uppercase(string) do
    string
    |> every_other_word(&String.upcase/1)
  end

  def unvowel(string) do
    string
    |> every_other_word(&remove_vowels/1)
  end

  def remove_vowels(word) do
    Regex.replace(~r/[aeiou]/, word, "")
  end

  def every_other_word(string, fun) do
    string
    |> String.split(" ")
    |> Enum.with_index
    |> Enum.map(fn({word,index}) ->
      if rem(index, 2) == 0 do
        word
      else
        fun.(word)
      end
    end)
    |> Enum.join(" ")
  end
end
