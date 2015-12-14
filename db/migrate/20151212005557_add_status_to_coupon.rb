class AddStatusToCoupon < ActiveRecord::Migration
  def change
    add_column :coupons, :status, :boolean, default: true,  null: false 
  end
end
