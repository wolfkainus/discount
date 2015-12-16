class Coupon < ActiveRecord::Base

  before_save :save_coupon_categories, if: -> { categories_ids.present? }

  belongs_to :user

  acts_as_votable

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

  def self.check_expiration
    find_each do |c|
  
      if c.expiration < Time.now
        c.status = false
        c.save
      end
      
    end
  end

end
