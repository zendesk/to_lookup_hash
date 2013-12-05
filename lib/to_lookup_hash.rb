require "to_lookup_hash/version"

module Enumerable
  def to_lookup_hash
    inject({}) do |memo, element|
      memo.merge!(yield(element) => element)
    end
  end

  def to_lookup_hash_with_value
    inject({}) do |memo, element|
      key, value = yield(element)
      memo.merge!(key => value)
    end
  end
end
