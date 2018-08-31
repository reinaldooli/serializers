require "support/spec_helper"

describe Serializers::Activerecord::BR::CPF, type: :activerecord do
  let(:serializer) { described_class }

  describe '#dump' do
    it 'dump CPF without format' do
      dumped = serializer.dump('012.345.678-90')
      expect(dumped).to eq('01234567890')
    end
  end

  describe '#load' do
    it 'load CPF formatted' do
      loaded = serializer.load('01234567890')
      expect(loaded).to eq('012.345.678-90')
    end
  end
end
