class AddExpirationToCoupon < ActiveRecord::Migration
  def change
    add_column :coupons, :expiration, :datetime
  end
end
