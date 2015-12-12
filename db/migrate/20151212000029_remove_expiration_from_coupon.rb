class RemoveExpirationFromCoupon < ActiveRecord::Migration
  def change
    remove_column :coupons, :expiration, :string
  end
end
