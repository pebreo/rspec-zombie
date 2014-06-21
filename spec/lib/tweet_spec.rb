require_relative "../spec_helper"
require_relative "tweet"

describe Tweet do

  it 'can set status' do
    tweet = Tweet.new
    tweet.status = 'nom nom nom'
    tweet.status.should == 'nom nom nom'
  end

  it 'without a leading @ symbol should be public' do
    tweet = Tweet.new(status: 'nom nom nom')
    tweet.public?.should == true
  end

  it 'truncates the status to 140 characters' do
    tweet = Tweet.new(status: 'nom nom nom' * 100)
    tweet.status.length.should be <= 140
  end

end