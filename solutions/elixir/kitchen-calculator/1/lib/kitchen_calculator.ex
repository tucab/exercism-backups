defmodule KitchenCalculator do
  def get_volume(volume_pair) do
    elem(volume_pair, 1)
  end

  def to_milliliter(volume_pair) do
    x = elem(volume_pair, 0)
    y = elem(volume_pair, 1)
    z = cond do
      x == :cup -> y = y * 240
      x == :fluid_ounce -> y = y * 30
      x == :teaspoon -> y = y * 5
      x == :tablespoon -> y = y * 15
      x == :milliliter -> y = y * 1
    end
    {:milliliter, z}
  end

  def from_milliliter(volume_pair, unit) do
    y = elem(volume_pair, 1)
    z = cond do
      unit == :cup -> y = y / 240
      unit == :fluid_ounce -> y = y / 30
      unit == :teaspoon -> y = y / 5
      unit == :tablespoon -> y = y / 15
      unit == :milliliter -> y = y / 1
    end
    {unit, z}
  end

  def convert(volume_pair, unit) do
    from_milliliter(to_milliliter(volume_pair), unit)
  end
end
