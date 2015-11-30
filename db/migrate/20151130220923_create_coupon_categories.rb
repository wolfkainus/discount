class CreateCouponCategories < ActiveRecord::Migration
  def change
    create_table :coupon_categories do |t|
      t.references :coupon, index: true, foreign_key: true
      t.references :category, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
