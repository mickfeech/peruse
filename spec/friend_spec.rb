require 'peruse/friend'
require 'pp'

describe Peruse::Friend do
  let(:web) { Peruse::Web.new('username', 'password') }
  before {
    stub_request(:post, 'https://username:password@plex.tv/users/sign_in.json').
        with(:headers => {'Accept' => '*/*; q=0.5, application/xml', 'Accept-Encoding' => 'gzip, deflate', 'User-Agent' => 'Ruby', 'X-Plex-Client-Identifier' => 'perusev0.9'}).
        to_return(:status => 200, :body => File.new('spec/fixtures/token.json'), :headers => {}) }

  it 'it inherits auth_token from web' do
    expect(Peruse::Friend.new(web).auth_token).to eql('HNYZ9LYwvm6pBsXCyVZS')
  end

  describe '.all' do

  end
end