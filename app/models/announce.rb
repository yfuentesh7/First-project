class Announce < ActiveRecord::Base
  belongs_to :subcategory
  validates :price, presence: { message: "The widget price is required" }
  validates :title, presence: { message: "The widget title is required" }
  validates :subcategory_id, presence: { message: "The widget subcategory is required" }
  validates :description, presence: { message: "The widget description is required" }
  validates :email, presence: { message: "The widget email is required" }
  validates :phone, presence: { message: "The widget phone is required" }
  has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/
end
