class Note < ApplicationRecord
  has_rich_text :body
  belongs_to :user, optional: true
  validates :title, presence: true, unless: -> (note){note.body.present?}
  validates :title, length: { maximum: 30, too_long: "%{count} characters is the maximum allowed" }
  validates :body, length: { maximum: 1000, too_long: "%{count} characters is the maximum allowed" }, allow_blank: true
  

end
