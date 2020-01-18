class Channel < ActiveRecord::Base
  validates :title, presence: true

  has_many :shows
end
