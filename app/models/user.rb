class User < ActiveRecord::Base
  has_many :tasks
  has_many :notes

  has_secure_password validations: true

  validates :username, presence: true, uniqueness: true
  validates :password, length: {minimum:5}

  before_validation :del_space_in_username 

  def del_space_in_username
    self.username.rstrip!
  end

end