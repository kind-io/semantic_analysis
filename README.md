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

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/kind-io/semantic_analysis.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
