class Item < ActiveRecord::Base
  # mount_uploaders :images, ImageUploader
  # serialize :images, JSON # If you use SQLite, add this line.
  before_destroy :not_referenced_by_any_line_item
  belongs_to :user, optional: true
  has_many :line_items
  mount_uploader :image, ImageUploader


  validates :title, :price, :condition, presence: true
  validates :description, length: { maximum: 500, too_long: "%{count} chraracters is the maximum allowed."}
  validates :title, length: { maximum: 140, too_long: "%{count} chraracters is the maximum allowed."}
  validates :price, length: { maximum: 7 }
  
  CONDITION = %w{ New Mint Good Used Fair Poor }

  private

  def not_refereced_by_any_line_item
    unless line_items.empty?
      errors.add(:base, "Line items present")
      throw :abort
    end
  end


end