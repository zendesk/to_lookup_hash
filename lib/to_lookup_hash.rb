require "to_lookup_hash/version"

module Enumerable
  def to_lookup_hash
    inject({}) do |memo, element|
      memo.merge!(yield(element) => element)
    end
  end
end
