# frozen_string_literal: true

require 'spec_helper'

describe GithubEventsExport::Options do
  describe '#[]' do
    it 'returns the value for a flag' do
      expect(described_class.new(%w[--version])[:version]).to eq(true)
    end

    it 'returns the value for a short flag' do
      expect(described_class.new(%w[-v])[:version]).to eq(true)
    end

    it 'returns the value for an option flag' do
      expect(described_class.new(%w[--token=foo])[:token]).to eq('foo')
    end
  end

  describe '#to_hash' do
    it 'returns the given arguments parsed into a hash' do
      args = %w[--version --token=foo]
      expected = { version: true, token: 'foo' }
      expect(described_class.new(args).to_hash).to eq(expected)
    end
  end
end
