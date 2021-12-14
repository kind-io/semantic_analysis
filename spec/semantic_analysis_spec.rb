# frozen_string_literal: true

require 'bigdecimal/util'

RSpec.describe SemanticAnalysis do
  let(:positive_polarity) do
    {
      compound: 0.9008351819101658.to_d,
      pos: 0.5891054238084057.to_d,
      neg: 0.0,
      neu: 0.41089457619159425.to_d
    }
  end

  let(:really_positive_polarity) do
    {
      compound: 0.9222007182386665.to_d,
      pos: 0.636098981077147.to_d,
      neg: 0.0,
      neu: 0.363901018922853.to_d
    }
  end

  let(:negative_polarity) do
    {
      compound: -0.8061195239266371.to_d,
      neg: 0.5096665732698235.to_d,
      neu: 0.49033342673017655.to_d,
      pos: 0.0
    }
  end

  it 'has a version number' do
    expect(SemanticAnalysis::VERSION).not_to be nil
  end

  it 'can find positive polarity' do
    polarity = SemanticAnalyzer.score_polarity('I am so happy for you!!! This is Great! :heart:')
    expect(polarity).to match(positive_polarity)
  end

  it 'can find REALLY positive polarity with an emoji' do
    polarity = SemanticAnalyzer.score_polarity('I am so happy for you!!! This is Great! 💖')
    expect(polarity).to match(really_positive_polarity)
  end

  it 'can find negative polarity' do
    polarity = SemanticAnalyzer.score_polarity('That is just terrible and it makes me angry!!!')
    expect(polarity).to match(negative_polarity)
  end
end
