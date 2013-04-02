require 'spec_helper'

describe "OmniAuth::Strategies::Mendeley" do
  subject do
    OmniAuth::Strategies::Mendeley.new(nil, @options || {})
  end

  context 'client options' do
    it 'has correct Mendeley site' do
      subject.options.client_options.site.should eq('https://api.mendeley.com')
    end

    it 'has correct request token path' do
      subject.options.client_options.request_token_path.should eq('/oauth/request_token/')
    end

    it 'has correct access token path' do
      subject.options.client_options.access_token_path.should eq('/oauth/access_token/')
    end

    it 'has correct authorize path' do
      subject.options.client_options.authorize_path.should eq('/oauth/authorize/')
    end
  end

  context '#uid' do
    before :each do
      subject.stub(:user_data) { { 'profile_id' => '123', "last_synced" => 1364896235 } }
    end

    it 'returns the id from user_data' do
      subject.uid.should eq('123')
      subject.info["profile_id"].should eq("123")
      subject.info["last_synced"].should eq(1364896235)
    end
  end
end
