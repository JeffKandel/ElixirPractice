defmodule OtpPlayground.FridgeServerTest do
  use ExUnit.Case
  alias OtpPlayground.FridgeServer

  test "put into fridge" do
    {:ok, fridge} = FridgeServer.start_link
    assert :ok == FridgeServer.store(fridge, :bacon)
  end

  test "remove from fridge" do
    {:ok, fridge} = FridgeServer.start_link
    FridgeServer.store(fridge, :bacon)
    assert {:ok, :bacon} == FridgeServer.take(fridge, :bacon)
  end

  test "doesn't exist" do
    {:ok, fridge} = FridgeServer.start_link
    assert :not_found == FridgeServer.take(fridge, :bacon)
  end
end
