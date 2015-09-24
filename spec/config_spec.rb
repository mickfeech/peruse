require 'peruse'

describe Peruse::Config do
  it 'should be configurable' do
    expect(Peruse.config.auth_token).to be(nil)
    Peruse.configure do |config|
      config.auth_token = 'token-string'
    end
    expect(Peruse.config.auth_token).to eq('token-string')
  end
end