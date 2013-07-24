class User < ActiveRecord::Base
  attr_accessible :name, :password_digest, :password, :password_confirmation
  validate :name, presence: true, uniqueness: true
  has_secure_password
  after_destroy :ensure_an_admin_remains
  def ensure_an_admin_remains
    if User.count.zero?
      raise "Can't delete last user"
    end
  end
end
