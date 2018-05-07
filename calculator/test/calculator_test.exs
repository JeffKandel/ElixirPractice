defmodule CalculatorTest do
  use ExUnit.Case

  test "starts with an empty stack" do
    {:ok, pid} = Calculator.start
    assert Calculator.peek(pid) == []
  end

  test "pushing onto the stack" do
    {:ok, pid} = Calculator.start
    Calculator.push(pid, 5)
    assert Calculator.peek(pid) == [5]
    Calculator.push(pid, 1)
    assert Calculator.peek(pid) == [1, 5]
  end

  test "adding" do
    {:ok, pid} = Calculator.start
    Calculator.push(pid, 5)
    Calculator.push(pid, 1)
    Calculator.push(pid, :+)
    assert Calculator.peek(pid) == [6]
  end

  test "subtracting" do
    {:ok, pid} = Calculator.start
    Calculator.push(pid, 5)
    Calculator.push(pid, 1)
    Calculator.push(pid, :-)
    assert Calculator.peek(pid) == [4]
  end

  test "multiplying" do
    {:ok, pid} = Calculator.start
    Calculator.push(pid, 5)
    Calculator.push(pid, 2)
    Calculator.push(pid, :x)
    assert Calculator.peek(pid) == [10]
  end

  test "wikipedia example" do
    {:ok, pid} = Calculator.start
    Calculator.push(pid, 5)
    Calculator.push(pid, 1)
    Calculator.push(pid, 2)
    Calculator.push(pid, :+)
    Calculator.push(pid, 4)
    Calculator.push(pid, :x)
    Calculator.push(pid, :+)
    Calculator.push(pid, 3)
    Calculator.push(pid, :-)
    assert Calculator.peek(pid) == [14]
  end
end
