ENV['RACK_ENV'] = 'test'

require_relative '../rspec_helper'

describe 'API' do

  it "Get users" do
    get '/users'
    expect(last_response).to be_ok
    expect(last_response.body).to eq [].to_json
  end

end
