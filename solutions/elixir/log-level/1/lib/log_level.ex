defmodule LogLevel do
  def to_label(level, legacy?) do
    cond do
      (level == 0) and (legacy? == false) -> :trace
      level == 1 -> :debug
      level == 2 -> :info
      level == 3 -> :warning
      level == 4 -> :error
      (level == 5) and (legacy? == false) -> :fatal
      true -> :unknown
    end
  end

  def alert_recipient(level, legacy?) do
    var = to_label(level, legacy?)
    cond do
      var == :error -> :ops
      var == :fatal -> :ops
      (var == :unknown) and (legacy? == true) -> :dev1
      var == :unknown -> :dev2
      true -> false
    end
  end
end