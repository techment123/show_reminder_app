class Show < ActiveRecord::Base
  validates :title, presence: true

  belongs_to :channel

  def self.getSearchedShows(query)
    self.joins(:channel).where("lower(channels.title) LIKE '%#{query}%' OR lower(shows.title) LIKE '%#{query}%'")
  end
end
