# ./test/products_service/products_test.exs
defmodule ProductsService.ProductsTest do
  use ExUnit.Case, async: true
  use Plug.Test
	setup do
    :ok = Ecto.Adapters.SQL.Sandbox.checkout(ProductsService.Repo)
	end
  require IEx

  @opts ProductsService.Endpoint.init([])
  doctest ProductsService.Products

  test "it returns a product" do
	  {:ok, product1} = %ProductsService.Product{name: "Product test1"}|> ProductsService.Repo.insert
	  list = Poison.encode!([product1.name])
    # Create a test connection
    conn = conn(:get, "/products/#{product1.id}")

    # Invoke the plug
    conn = ProductsService.Endpoint.call(conn, @opts)
    # IEx.pry()

    # Assert the response and status
    assert conn.state == :sent
    assert conn.status == 200
    assert conn.resp_body == list
  end

  test "it returns the products's list" do
	  {:ok, product1} = %ProductsService.Product{name: "Product test1"}|> ProductsService.Repo.insert
	  {:ok, product2} = %ProductsService.Product{name: "Product test2"}|> ProductsService.Repo.insert
	  list = Poison.encode!([product1.name, product2.name])
    # Create a test connection
    conn = conn(:get, "/products")

    # Invoke the plug
    conn = ProductsService.Endpoint.call(conn, @opts)
    # IEx.pry()

    # Assert the response and status
    assert conn.state == :sent
    assert conn.status == 200
    assert conn.resp_body == list
  end
end

