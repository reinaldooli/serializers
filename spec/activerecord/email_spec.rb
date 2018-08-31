require "support/spec_helper"

describe Serializers::Activerecord::Email, type: :activerecord do
  let(:serializer) { described_class }

  describe '#dump' do
    it 'dump email as lowercase' do
      dumped = serializer.dump('EMAIL@email.cOm')
      expect(dumped).to eq('email@email.com')
    end
  end

  describe '#load' do
    it 'load email as it was saved' do
      loaded = serializer.load('Email@email.com')
      expect(loaded).to eq('Email@email.com')
    end
  end
end
