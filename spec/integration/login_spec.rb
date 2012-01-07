require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe "the sign-in process" do
  it "should do something" do
    within('#session') do
      fill_in 'Login', :with => 'chrisoei'
      fill_in 'Password', :with => ''
    end
    click_link 'Sign in'   
  end

end