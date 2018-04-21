defmodule TestingTest do
  use ExUnit.Case
  doctest Testing

  test "true" do
    assert 1 + 1 == 2
  end

  test "false" do
    refute 1 == 2
  end

  test "uppercase doesn't change the first word" do
    assert Testing.uppercase("foo") == "foo"
  end

  test "uppercase converts the second word to uppercase" do
    assert Testing.uppercase("foo bar") == "foo BAR"
  end

  test "uppercase converts every other word to upper case" do
    assert Testing.uppercase("foo bar baz whee") == "foo BAR baz WHEE"
  end

  test "unvowel doesn't change the first word" do
    assert Testing.unvowel("foo") == "foo"
  end

  test "unvowel removes the second words vowels" do
    assert Testing.unvowel("foo bar") == "foo br"
  end

  test "unvowel remove every other words vowels" do
    assert Testing.unvowel("foo bar baz whee") == "foo br baz wh"
  end
end
