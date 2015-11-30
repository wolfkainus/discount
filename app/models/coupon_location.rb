class CouponLocation < ActiveRecord::Base
  belongs_to :coupon
  belongs_to :location
end
