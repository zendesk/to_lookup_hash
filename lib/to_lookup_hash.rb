require "to_lookup_hash/version"

module Enumerable
  def to_lookup_hash
    inject({}) do |memo, element|
      memo[yield(element)] = element
      memo
    end
  end

  def to_lookup_hash_with_value
    inject({}) do |memo, element|
      key, value = yield(element)
      memo[key] = value
      memo
    end
  end
end
