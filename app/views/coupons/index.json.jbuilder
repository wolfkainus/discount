json.array!(@coupons) do |coupon|
  json.extract! coupon, :id, :title, :description, :photo, :value, :expiration
  json.url coupon_url(coupon, format: :json)
end
