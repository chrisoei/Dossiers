require 'spec_helper'

describe HomeController do
  it "should redirect to the people path" do
    get :index
    response.should be_redirect
  end
end
