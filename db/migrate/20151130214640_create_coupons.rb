class CreateCoupons < ActiveRecord::Migration
  def change
    create_table :coupons do |t|
      t.string :title
      t.text :description
      t.string :photo
      t.text :value
      t.string :expiration

      t.timestamps null: false
    end
  end
end
