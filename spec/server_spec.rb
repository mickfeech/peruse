require 'peruse/server'

describe Peruse::Server do
  let(:server) { Peruse::Server.new('localhost', 32400) }
  it '.host' do
    expect(server.host).to eq 'localhost'
  end

  it '.port' do
    expect(server.port).to eq(32400)
  end

  it '.url' do
    expect(server.url).to eq('http://localhost:32400')
  end

end