defmodule KitchenCalculator do
  def get_volume(volume_pair) do
    elem(volume_pair, 1)
  end

  def to_milliliter(volume_pair) do
    x = elem(volume_pair, 0)
    z = cond do
      x == :cup -> get_volume(volume_pair) * 240
      x == :fluid_ounce -> get_volume(volume_pair) * 30
      x == :teaspoon -> get_volume(volume_pair) * 5
      x == :tablespoon -> get_volume(volume_pair) * 15
      x == :milliliter -> get_volume(volume_pair) * 1
    end
    {:milliliter, z}
  end

  def from_milliliter(volume_pair, unit) do
    z = cond do
      unit == :cup -> get_volume(volume_pair) / 240
      unit == :fluid_ounce -> get_volume(volume_pair) / 30
      unit == :teaspoon -> get_volume(volume_pair) / 5
      unit == :tablespoon -> get_volume(volume_pair) / 15
      unit == :milliliter -> get_volume(volume_pair) / 1
    end
    {unit, z}
  end

  def convert(volume_pair, unit) do
    from_milliliter(to_milliliter(volume_pair), unit)
  end
end
