require 'to_lookup_hash'

describe Enumerable do
  it 'converts to a lookup hash' do
    input = [double(:name => 'John'), double(:name => 'Jim')]

    result = input.to_lookup_hash(&:name)

    expect(result['John']).to eq(input.first)
    expect(result['Jim']).to eq(input.last)
  end

  it 'converts to a lookup hash with a value mapping' do
    input = [double(:name => 'John', :surname => 'Smith'), double(:name => 'Jim', :surname => 'Poe')]

    result = input.to_lookup_hash_with_value do |object|
      [object.name, object.surname]
    end

    expect(result['John']).to eq('Smith')
    expect(result['Jim']).to eq('Poe')
  end
end
