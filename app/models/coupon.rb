class Coupon < ActiveRecord::Base

  before_save :save_coupon_categories, if: -> { categories_ids.present? }

  belongs_to :user
  validates :title, presence: true
  validates :description, presence: true
  validates :photo, presence: true
  validates :value, presence: true
  validates :expiration, presence: true


  has_many :coupon_categories, dependent: :destroy
  has_many :categories, through: :coupon_categories

  has_many :coupon_locations, dependent: :destroy 
  has_many :locations, through: :coupon_locations

  mount_uploader :photo, PhotoUploader

  attr_accessor :categories_ids

  def save_coupon_categories
    if categories_ids.present?
      categories = Category.find(categories_ids)
      self.categories = categories
    end
  end

  #MEtodo coupon_expiration
    #Si la fecha del campo expiration = a la fecha actual
    #se cambia el estado de coupon.status false

end
