require 'peruse/friend'

describe Peruse::Friend do
  describe '.all' do
    it 'returns values' do
      expect(Peruse::Friend.all).not_to be_empty
    end
  end
end