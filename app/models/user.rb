class User < ApplicationRecord
  include Clearance::User

  validates :username, presence: true, uniqueness: true

  has_many :posts

  def username
    self.email.split('@').first
  end
end
