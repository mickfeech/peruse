require 'peruse'

describe Peruse::Config do
  it 'is configurable' do
    Peruse.configure do |config|
      config.auth_token = 'token-string'
      config.username = 'username'
      config.password = 'password'
    end
    expect(Peruse.config.auth_token).to eq('token-string')
    expect(Peruse.config.password).to eq('password')
    expect(Peruse.config.username).to eq('username')
  end
end