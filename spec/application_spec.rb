require 'spec_helper'

describe Sinatra::Application do
  context "responding to GET /" do
    it "should return status code 200" do
      get '/'
      last_response.status.should == 200
    end
  end
end