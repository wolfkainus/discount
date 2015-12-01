class Coupon < ActiveRecord::Base
	belongs_to :user
	validates :title, presence: true
	validates :description, presence: true
	validates :photo, presence: true
	validates :value, presence: true
	validates :expiration, presence: true
end
