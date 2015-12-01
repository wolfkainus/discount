class Location < ActiveRecord::Base
  has_many :coupon_locations
  has_many :coupons, through: :coupon_locations
end
