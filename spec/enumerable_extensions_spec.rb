require 'to_lookup_hash'

describe Enumerable do
  it 'converts to a lookup hash' do
    input = [double(:name => 'John'), double(:name => 'Jim')]

    result = input.to_lookup_hash(&:name)

    expect(result['John']).to eq(input.first)
    expect(result['Jim']).to eq(input.last)
  end
end
