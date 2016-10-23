defmodule EnergyCostTest do
  use ExUnit.Case
  doctest EnergyCost

  test "the truth" do
    assert 1 + 1 == 2
  end

  test "returns zero when amount worn it zero" do
    assert EnergyCost.cost(0, 10) == 0
  end

  test "returns the price when amount worn is 1" do
    assert EnergyCost.cost(1, 2) == 2
  end

  test "returns the correct result provided two params" do
    assert EnergyCost.cost(1, 10) == 10
  end

  test "returns the correct result provided three params" do
    assert EnergyCost.cost(1, 30, 3) == 3
  end
end
