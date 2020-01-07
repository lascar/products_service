defmodule Products do
  def list do
    %{"status" => "done","source" => "network"}
  end

  def show(id) do
    Poison.encode! %{"id" => id}
  end
end
