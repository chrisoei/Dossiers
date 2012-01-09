require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe Person do
  before(:each) do
    user = User.new(:login=>'johndoe',:password=>'test123',:password_confirmation=>'test123')
    user.save_without_session_maintenance
    visit login_path
    fill_in 'Login', :with => 'johndoe'
    fill_in 'Password', :with => 'test123'
    click_button 'Login'
    current_path.should == people_path
  end
  
  it "should add a new person" do
    click_link 'New Person'
    fill_in 'First name', :with => 'John'
    fill_in 'Last name', :with => 'Doe'
    fill_in 'Notes', :with => 'Test'
    click_button 'Create Person'
    page.should have_content 'Person was successfully created.'
  end
  
end