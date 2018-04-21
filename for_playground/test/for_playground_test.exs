defmodule ForPlaygroundTest do
  use ExUnit.Case
  doctest ForPlayground

  test "greets the world" do
    assert ForPlayground.hello() == :world
  end
end
