class User < ActiveRecord::Base
	has_many :coupons, dependent: :destroy
	
	validates :name, presence: true
	validates :last_name, presence: true
	validates :user_name, presence:true, uniqueness: true
	validates :email, presence: true
	validates :address, presence: true
	validates :avatar, presence: true

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
