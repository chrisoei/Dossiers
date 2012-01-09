require 'spec_helper'

describe PhoneNumber do
  
  it "should validate the presence of a person_id" do
    a = PhoneNumber.new
    a.save.should be_false
    a = PhoneNumber.new
    a.person = Person.create
    a.save.should be_true
  end
  
end
