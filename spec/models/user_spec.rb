require 'rspec_helper'
require './models/user'

describe User do
  let(:email1) { 'user1@provider.com' }

  after do
    User.destroy_all
  end

  it '#new' do
    user = User.new
    user.email = email1
    expect(user.save!).to be_truthy

    a = User.where(email: email1)
    expect(a.size).to eql 1
  end
end
