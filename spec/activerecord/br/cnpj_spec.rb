require "support/spec_helper"

describe Serializers::Activerecord::BR::CNPJ, type: :activerecord do
  let(:serializer) { described_class }

  describe '#dump' do
    it 'dump CNPJ without format' do
      dumped = serializer.dump('01.234.567/0001-89')
      expect(dumped).to eq('01234567000189')
    end
  end

  describe '#load' do
    it 'load CNPJ formatted' do
      loaded = serializer.load('01234567000189')
      expect(loaded).to eq('01.234.567/0001-89')
    end
  end
end
