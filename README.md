# SemanticAnalysis

`SemanticAnalysis` is `Rutie` wrapped Rust implementation of [VADER Sentiment Analysis](https://github.com/kind-io/vader-sentiment-rust)

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'semantic_analysis'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install semantic_analysis

## Usage

```ruby
polarity = SemanticAnalyzer.score_polarity('I am so happy for you!!! This is Great! 💖')
expected = {
  compound: 0.9222007182386665,
  neg: 0.0,
  neu: 0.363901018922853,
  pos: 0.636098981077147
}

polarity == expected
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/semantic_analysis.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
