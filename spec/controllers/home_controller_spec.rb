require 'spec_helper'

describe HomeController do
  it "should redirect to the people path" do
    get :index
    response.should redirect_to(people_path)
  end
end
