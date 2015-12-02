class AddUserRefToCoupon < ActiveRecord::Migration
  def change
    add_reference :coupons, :user, index: true, foreign_key: true
  end
end
