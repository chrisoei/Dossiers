class Organization < ActiveRecord::Base
  
  belongs_to :parent, :class_name => 'Organization'
  
  def display_name()
    "#{name} [#{id.to_s}]"
  end
  
end
