defmodule FunctionLabelTest do
  use ExUnit.Case
  doctest FunctionLabel

  test "greets the world" do
    assert FunctionLabel.hello() == :world
  end
end
