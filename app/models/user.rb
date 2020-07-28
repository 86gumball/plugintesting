class User < ApplicationRecord
  include Clearance::User

  validates :username, presence: true, uniqueness: true

  def username
    self.email.split('@').first
  end
end
