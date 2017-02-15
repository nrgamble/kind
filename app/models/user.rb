class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :trackable, :validatable

  belongs_to :group, optional: true

  has_many :acts
  has_many :challenges

  accepts_nested_attributes_for :challenges

  def name
    fname + ' ' + lname
  end

  def current_challenge
    challenges.order(start: :desc).first
  end

end
