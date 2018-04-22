defmodule OtpPlaygroundTest do
  use ExUnit.Case
  alias OtpPlayground.FridgeServer

  test "put into fridge" do
    {:ok, fridge} = GenServer.start_link FridgeServer, [], []
    assert :ok == GenServer.call(fridge, {:store,:bacon})
  end

  test "remove from fridge" do
    {:ok, fridge} = GenServer.start_link FridgeServer, [], []
    GenServer.call(fridge, {:store,:bacon})
    assert {:ok, :bacon} == GenServer.call(fridge, {:take, :bacon})
  end

  test "doesn't exist" do
    {:ok, fridge} = GenServer.start_link FridgeServer, [], []
    assert :not_found == GenServer.call(fridge, {:store,:bacon})
  end
end
