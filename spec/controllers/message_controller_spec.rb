require 'spec_helper'

describe MessageController do

  describe "GET 'snippet'" do
    it "returns http success" do
      get 'snippet'
      response.should be_success
    end
  end

end
