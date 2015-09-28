require 'peruse/friend'
require 'pp'

describe Peruse::Friend do
  let(:web) { Peruse::Web.new('username', 'password') }
  before {
    stub_request(:get, 'https://username:password@plex.tv/pms/friends/all').
        with(:headers => {'Accept' => '*/*; q=0.5, application/xml', 'Accept-Encoding' => 'gzip, deflate', 'User-Agent' => 'Ruby', 'X-Plex-Client-Identifier' => 'perusev0.9'}).
        to_return(:status => 200, :body => File.new('spec/fixtures/friends.xml'), :headers => {}) }
  before {
    stub_request(:post, 'https://username:password@plex.tv/users/sign_in.json').
        with(:headers => {'Accept' => '*/*; q=0.5, application/xml', 'Accept-Encoding' => 'gzip, deflate', 'User-Agent' => 'Ruby', 'X-Plex-Client-Identifier' => 'perusev0.9'}).
        to_return(:status => 200, :body => File.new('spec/fixtures/token.json'), :headers => {}) }

  it 'it inherits attributes from web' do
    expect(Peruse::Friend.new(web).auth_token).to eql('HNYZ9LYwvm6pBsXCyVZS')
    expect(Peruse::Friend.new(web).username).to eql('username')
    expect(Peruse::Friend.new(web).password).to eql('password')
  end

  it '.all' do
    expect(web.friend.all).to be_an(Array)
    expect(web.friend.all.first[0]).to eql('user1@example.com')
    expect(web.friend.all.first[1]).to eql('user1')
  end

end