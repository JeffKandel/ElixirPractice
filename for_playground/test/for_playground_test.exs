defmodule ForPlaygroundTest do
  use ExUnit.Case

  test "basic for comprehensions" do
    result = for i <- [1,2,3], do: i + 1
    assert [2,3,4] == result
  end

  test "filters in for comprehensions" do
    result =
      for i <- 0..10, rem(i,2) == 1 do
        i
      end
    assert result = [1,3,5,7,9]
  end

  test "collecting results into a map" do
    result =
      for i <- 0..2, into: %{} do
        {"#{i}", i}
      end
    assert result == %{"0" => 0, "1" => 1, "2" => 2}
  end
end
