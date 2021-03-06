class Person < ActiveRecord::Base
  has_many :emails, :dependent=>:destroy
  has_many :phone_numbers, :dependent=>:destroy
  has_many :addresses, :dependent=>:destroy
  accepts_nested_attributes_for :emails, :reject_if=>:all_blank
  accepts_nested_attributes_for :phone_numbers, :reject_if=>:all_blank
  accepts_nested_attributes_for :addresses, :reject_if=>:all_blank
  belongs_to :father, :class_name => 'Person'
  belongs_to :mother, :class_name => 'Person'
  scope :order_by_last_name, order('last_name asc')

  def display_name()
    "#{first_name} #{last_name} (#{id.to_s})"
  end
  
end
