require 'spec_helper'

describe Person do
  it "should construct a display name" do
    p = Person.create(:first_name => "John", :last_name => "Doe")
    p.display_name.should == "John Doe (#{p.id})"
  end
end
