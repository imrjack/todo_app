class User < ActiveRecord::Base
  has_many :tasks
  has_many :notes

  has_secure_password validations: true

  validates :username, presence: true, uniqueness: true
  validates :password, length: {minimum:5}

  before_validation :format_username

  def format_username
    self.username.downcase.rstrip!
  end

end