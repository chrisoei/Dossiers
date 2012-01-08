require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe "the sign-in process" do
  it "should sign a user in" do
    within('#session') do
      fill_in 'Login', :with => 'chrisoei'
      fill_in 'Password', :with => ''
    end
    click_link 'Sign in'   
  end

end