require 'spec_helper'

describe Email do
  it "should validate the presence of a person_id" do
    a = Email.new
    a.save.should be_false
    a = Email.new
    a.person = Person.create
    a.save.should be_true
  end
end
