require 'peruse'

describe Peruse::Config do
  it 'should be configurable' do
    expect(Peruse.config.auth_token).to be(nil)
  end
end