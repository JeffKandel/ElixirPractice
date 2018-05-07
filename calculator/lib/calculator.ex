defmodule Calculator do
  @moduledoc """
  Documentation for Calculator.
  """

  @doc """
  Hello world.

  ## Examples

      iex> Calculator.hello
      :world

  """
  def start do
    Task.start_link(fn -> loop([]) end)
  end

  def loop(list) do
    receive do
      {from, ref, :peek} ->
        send(from, {ref, list})
        loop(list)
      {:push, :+} ->
        [first | [second | list] ] = list
        loop([ first + second | list])
      {:push, :-} ->
        [first | [second | list] ] = list
        loop([ second - first | list])
      {:push, :x} ->
        [first | [second | list] ] = list
        loop([ first * second | list])
      {:push, val} ->
        loop([ val | list])
    end
  end

  def peek(pid) do
    ref = make_ref()
    send(pid, {self(), ref, :peek})
    receive do
      {^ref, val} -> val
    end
  end

  def push(pid, val) do
    send(pid, {:push, val})
  end
end
