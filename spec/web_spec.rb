require 'peruse/web'
describe Peruse::Web do
  let(:web) { Peruse::Web.new('username', 'password') }
  before {
    stub_request(:post, 'https://username:password@plex.tv/users/sign_in.json').
        with(:headers => {'Accept' => '*/*; q=0.5, application/xml', 'Accept-Encoding' => 'gzip, deflate', 'User-Agent' => 'Ruby', 'X-Plex-Client-Identifier' => 'perusev0.9'}).
        to_return(:status => 200, :body => File.new('spec/fixtures/token.json'), :headers => {}) }

  it '.auth_token' do
    expect(web.auth_token).to eql('HNYZ9LYwvm6pBsXCyVZS')
  end
end
