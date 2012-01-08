require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe "the sign-in process" do
  before(:each) do
    user = User.new(:login=>'johndoe',:password=>'test123',:password_confirmation=>'test123')
    user.save_without_session_maintenance
  end
  
  it "should not let a user sign in with an incorrect password" do
    visit login_path
    fill_in 'Login', :with => 'johndoe'
    fill_in 'Password', :with => 'test'
    click_button 'Login'
    current_path.should == user_session_path
  end
  
  it "should sign a user in" do
    visit login_path
    fill_in 'Login', :with => 'johndoe'
    fill_in 'Password', :with => 'test123'
    click_button 'Login'
    current_path.should == person_path
  end

end