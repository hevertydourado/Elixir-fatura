defmodule FaturaTest do
  use ExUnit.Case
  doctest Fatura

  test "deve criar uma lista de faturas" do
    faturas = Fatura.criar_faturas(["Agua", "Telefone", "Luz"], "")
    assert faturas === ["Agua", "Telefone", "Luz"]
  end

  test "deve ordenar lista de faturas" do
    faturas = Fatura.criar_faturas(["Agua", "Telefone", "Luz"], "")
    refute Fatura.ordena_fatura(faturas) == ["Agua", "Telefone", "Luz"]
  end

  test "deve verificar se a conta existe" do
    assert Fatura.fatura_existe?(Fatura.criar_faturas(["Telefone", "Agua", "Luz"], ""), "Luz") == true
  end

end
