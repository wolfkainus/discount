class CreateCouponLocations < ActiveRecord::Migration
  def change
    create_table :coupon_locations do |t|
      t.references :coupon, index: true, foreign_key: true
      t.references :location, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
