class User < ActiveRecord::Base
	cattr_reader :per_page
  @@per_page = 10
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable, :lockable and :timeoutable
  #devise :encryptable, :encryptor => :bcrypt 
  devise :database_authenticatable, :recoverable, :rememberable, :trackable, 
         :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :first_name, :last_name, :email, :password, :password_confirmation, :remember_me, :role
  validate :role_in_list
  validates :first_name, :last_name, :email, :role, :presence => true
  ROLES = %w[admin manager user].freeze
  
  def role_in_list
    errors.add(:base, "Role #{self.role} is not allowed") unless User::ROLES.include?(self.role)
  end
end


# == Schema Information
#
# Table name: users
#
#  id                   :integer         not null, primary key
#  email                :string(255)     default(""), not null
#  encrypted_password   :string(128)     default(""), not null
#  password_salt        :string(255)     default(""), not null
#  reset_password_token :string(255)
#  remember_token       :string(255)
#  remember_created_at  :datetime
#  sign_in_count        :integer         default(0)
#  current_sign_in_at   :datetime
#  last_sign_in_at      :datetime
#  current_sign_in_ip   :string(255)
#  last_sign_in_ip      :string(255)
#  created_at           :datetime
#  updated_at           :datetime
#  role                 :string(255)     default("user"), not null
#  first_name           :string(255)
#  last_name            :string(255)
#

