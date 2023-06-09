class User < ActiveRecord::Base
  has_secure_password

  validates :first_name, :last_name, presence: true
  validates :email, uniqueness: { case_sensitive: false }, presence: true

  def self.authenticate_with_credentials(email, password)
    user = self.find_by_email(email.strip.downcase)
    if user && user.authenticate(password)
      user
    else
      nil
    end
  end
end