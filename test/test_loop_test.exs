defmodule FunctionLabelTest.TestLoop do
  use ExUnit.Case

  alias FunctionLabel.{TestLoop}

  test "tmp macro" do
    TestLoop.run("Hello")
  end
end
