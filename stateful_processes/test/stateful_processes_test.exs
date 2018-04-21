defmodule StatefulProcessesTest do
  use ExUnit.Case
  doctest StatefulProcesses

  test "starts the process" do
    {:ok, pid} = Counter.start(0)
    assert is_pid(pid)
  end

  test "getting the value" do
    {:ok, pid} = Counter.start(0)
    assert {:ok, 0} = Counter.get_value(pid)
  end

  test "increment adds one" do
    {:ok, pid} = Counter.start(0)
    :ok = Counter.increment(pid)
    assert {:ok,1} = Counter.get_value(pid)
  end

  test "decrement subtracts one" do
    {:ok, pid} = Counter.start(0)
    :ok = Counter.decrement(pid)
    assert {:ok,-1} = Counter.get_value(pid)
  end

end
