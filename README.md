# ToLookupHash

Easily generate a lookup hash from an Enumerable to later
perform repeated searches by something

## Installation

Add this line to your application's Gemfile:

    gem 'to_lookup_hash'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install to_lookup_hash

## Usage

```ruby
Person = Struct.new(:name, :surname)
people = [Person.new('John', 'Smith'), Person.new('Jim', 'Dougan')]

people.to_lookup_hash(&:name) 
# => {"John"=>#<struct Person name="John", surname="Smith">, "Jim"=>#<struct Person name="Jim", surname="Dougan">}


people.to_lookup_hash_with_value do |person|
  [person.name, person.surname]
end
# => {"John"=>"Smith", "Jim"=>"Dougan"}

```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
