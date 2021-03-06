class Challenge < ApplicationRecord

  belongs_to :user, optional: true # This is not actually optional but it seems to get nested_attributes to work with Devise
  has_many :acts

  def complete?
    days == acts.count
  end

  def weeks
    days / 7
  end

  def display_name
    name || "Challenge \##{id}"
  end

end
