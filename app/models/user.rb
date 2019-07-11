class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         
  has_many :likes, dependent: :destroy
  has_many :albums, through: :likes
  belongs_to :role

  validates :email, uniqueness: true

  # Set the default user privilege to 'standard'
  after_initialize :set_default_role, :if => :new_record?
  def set_default_role
    self.role = Role.find(2)
  end
end
