require 'rspec'
require_relative 'YOUR_FILE'

RSpec.describe YOURCLASS do
  it 'ensures that the class exists' do
    expect(described_class).to be
  end
end
