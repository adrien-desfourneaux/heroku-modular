require 'spec_helper'

describe FirstApp::API do
  include Rack::Test::Methods

  def app; FirstApp::API; end

  let(:status) { last_response.status }
  let(:body) { last_response.body }

  context 'GET /' do
    before { get '/' }

    subject { status }
    it { is_expected.to be 200 }
  end
end

