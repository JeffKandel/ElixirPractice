defmodule AgentTaskSupervisionPlaygroundTest do
  use ExUnit.Case
  doctest AgentTaskSupervisionPlayground

  test "greets the world" do
    assert AgentTaskSupervisionPlayground.hello() == :world
  end
end
