# Faraday::Interval

Middleware to request interval by second.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'faraday-interval'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install faraday-interval

## Usage

```ruby
require 'faraday-interval'

connection = Faraday.new 'https://example.com/api' do |conn|
  conn.request :interval, second: 3600 / 300 # 300 API call limit per hour
  conn.adapter Faraday.default_adapter
end
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/kei-s/faraday-interval.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

