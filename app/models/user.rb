class User < ActiveRecord::Base
	has_many :coupons, dependent: :destroy
	
	validates :name, presence: true
	validates :lastname, presence: true
	validates :username, presence:true, uniqueness: true
	validates :email, presence: true
	validates :address, presence: true
	validates :photo, presence: true

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
