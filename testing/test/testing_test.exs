defmodule TestingTest do
  use ExUnit.Case
  #doctest Testing

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
end
