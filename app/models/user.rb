class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable, :lockable and :timeoutable
  devise :database_authenticatable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :role
  validate :role_in_list
  validates_presence_of :role
  ROLES = %w[admin manager user].freeze
  
  def role_in_list
    errors.add(:base, "Role #{self.role} is not allowed") unless User::ROLES.include?(self.role)
  end
end