every :day, :at => '12:01am' do
  runner "Coupon.check_expiration"
end

