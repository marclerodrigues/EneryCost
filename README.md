# EnergyCost

This simple code aims to calculate the monthly cost of Air Conditioning.
You only have to supply how much you equipment spends in a monthly basis and the price you pay for kW.

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed as:

  1. Add `energy_cost` to your list of dependencies in `mix.exs`:

    ```elixir
    def deps do
      [{:energy_cost, "~> 0.1.0"}]
    end
    ```

  2. Ensure `energy_cost` is started before your application:

    ```elixir
    def application do
      [applications: [:energy_cost]]
    end
    ```

#Usage

  If you use your equipment during the whole month you can use cost/2, like this:
  
  ```elixir
  EnergyCost.cost(kWh_worn, kWh_price)
  ```

Ex:
  For a 9.000 BTU Device, it uses 142.288 kWh/month, here the energy costs R$ 0.701574/kWh

  ```elixir
  EnergyCost.cost(142.288, 0.701574) # => 99.82
  ```

  Or if you used only for a part of the month you can use cost/3 to supply the number of days used.

  ```elixir
  EnergyCost.cost(kWh_worn, kWh_price, total_days)
  ```
Ex:
  The same equipment as the last example, at the same area but used just 15 days during the month.
  
  ```elixir
  EnergyCost.cost(142.288, 0.701574, 15) # => 49.91
  ```

