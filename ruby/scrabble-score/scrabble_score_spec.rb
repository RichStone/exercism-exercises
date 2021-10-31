require 'rspec'
require_relative 'scrabble_score'

RSpec.describe Scrabble do
  it 'ensures that the class exists' do
    expect(described_class).to be
  end
end
