require 'peruse/server'

describe Peruse::Server do
  before do
    @server = Peruse::Server.new('localhost', 32400)
  end

  it "has a host" do
    expect(@server.host).to eq 'localhost'
  end

  it "has a port" do
    expect(@server.port).to eq(32400)
  end

  it "has a properly formatted url" do
    expect(@server.url).to eq('http://localhost:32400')
  end

end