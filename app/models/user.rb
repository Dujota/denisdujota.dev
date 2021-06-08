class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_and_belongs_to_many :roles
  has_many :posts, dependent: :destroy

  # USER AUTHORITY METHODS
  def role_names
    roles.map { |role| role.name }
  end

  def add_role(role)
    self.roles << role
  end

  def add_role_by_role_name(role_name)
    self.roles << Role.find_by_name(role_name)
  end

  def admin?
    self.roles.include?(Role.find_by_name(:admin))
  end
end
