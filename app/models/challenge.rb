class Challenge < ApplicationRecord

  belongs_to :user, optional: true # This is not actually optional but it seems to get nested_attributes to work with Devise
  has_many :acts

  def weeks
    days / 7
  end

end
