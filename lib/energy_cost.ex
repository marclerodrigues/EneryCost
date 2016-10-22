defmodule EnergyCost do
  def cost(kW_month, kW_price), do: kW_month * kW_price
  def cost(kW_month, kW_price, days) do
    Float.round((kW_month * kW_price * days / 30), 2)
  end
end
