class Email < ActiveRecord::Base
  belongs_to :person
  validates :person_id, :presence => true
end
