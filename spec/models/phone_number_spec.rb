require 'spec_helper'

describe PhoneNumber do
  
  it "should validate the presence of a person_id" do
    a = PhoneNumber.new
    a.save.should be_false
    a = PhoneNumber.new
    a.person = Person.create
    a.save.should be_true
  end

  it 'should strip spaces before saving' do
    a = PhoneNumber.new(:number => '1 415 238 1138')
    a.person = Person.create
    a.save!
    a.number.should == '14152381138'
  end
end
