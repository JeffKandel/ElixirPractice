defmodule StatefulProcessesTest do
  use ExUnit.Case
  doctest StatefulProcesses

  test "greets the world" do
    assert StatefulProcesses.hello() == :world
  end
end
