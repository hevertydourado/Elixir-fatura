defmodule Fatura do

  @moduledoc """
    Este modulo executamos funções de faturas
  """

  @doc """
    Ao receber `fatura` retorna um array de faturas
      ## Exemplos
      iex> Fatura.criar_faturas(["Telefone", "Agua"], [5, 10])
      ["Telefone", "Agua"]
  """

  def criar_faturas(faturas, vencimentos) do
    for vencimento <- vencimentos, fatura <- faturas do
      "Fatura: #{fatura} vence no dia #{vencimento}"
    end
  end

  def faturas_a_pagar(faturas, quantidade) do
    Enum.split(faturas, quantidade)
  end

  @doc """
    Ao receber `fatura` retorna um array de fatura ordenado
      ## Exemplos
      iex> Fatura.ordena_fatura(Fatura.criar_faturas(["Telefone", "Agua", "Luz"], ""))
      ["Agua", "Luz", "Telefone"]
  """

  def ordena_fatura(faturas) do
    Enum.sort(faturas)
  end

  @doc """
    Ao receber `faturas` e um elemento de `fatura` retorna se existe ou não
      ## Exemplos
      iex> Fatura.fatura_existe?(Fatura.criar_faturas(["Telefone", "Agua", "Luz"], ""), "Luz")
      true
  """

  def fatura_existe?(faturas, fatura) do
    Enum.member?(faturas, fatura)
  end

end