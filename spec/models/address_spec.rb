require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe Address do
  it "should validate the presence of a person_id" do
    a = Address.new
    a.save.should be_false
    a = Address.new
    a.person = Person.create
    a.save.should be_true
  end
end