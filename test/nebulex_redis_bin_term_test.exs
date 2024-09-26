defmodule NebulexRedisBinTermTest do
  use ExUnit.Case
  doctest NebulexRedisBinTerm

  test "greets the world" do
    assert NebulexRedisBinTerm.hello() == :world
  end

  test "get returns binary data" do
    object = %{a: "b"}
    object_bin = :erlang.term_to_binary(object)
    
    NebulexRedisBinTerm.Cache.put("object_bin", object_bin)
    result = NebulexRedisBinTerm.Cache.get("object_bin")
    
    assert is_binary(result)
    assert result == object_bin
    refute result == object
  end
end
