require 'spec_helper'

describe Person do
  it "should construct a name" do
    p = Person.create(:first_name => "John", :last_name => "Doe")
    p.name.should == "John Doe (#{p.id})"
  end
end
