defmodule EnergyCost do
  def cost(0, kW_price), do: 0
  def cost(1, kW_price), do: kW_price
  def cost(kW_month, kW_price), do: kW_month * kW_price
  def cost(kW_month, kW_price, days) do
    Float.round((kW_month * kW_price * days / 30), 2)
  end
end
