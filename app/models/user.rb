class User < ActiveRecord::Base
	has_many :coupons, dependent: :destroy

  mount_uploader :avatar, AvatarUploader
	
	validates :name, presence: true
	validates :last_name, presence: true
	validates :user_name, presence:true, uniqueness: true
	validates :email, presence: true
	validates :address, presence: true
	validates :avatar, presence: true

  before_save :default_role

  enum role: [:admin, :user, :guest]

  def default_role
    self.role ||= 1
  end

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
