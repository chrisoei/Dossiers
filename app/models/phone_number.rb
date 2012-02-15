class PhoneNumber < ActiveRecord::Base
  belongs_to :person
  validates :person_id, :presence => true
  before_save :strip_spaces

  private
    def strip_spaces
      self.number = self.number.gsub(/\s+/,'') if self.number
    end
end
