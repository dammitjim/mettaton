defmodule MettatonTest do
  use ExUnit.Case
  doctest Mettaton

  test "greets the world" do
    assert Mettaton.hello() == :world
  end
end
