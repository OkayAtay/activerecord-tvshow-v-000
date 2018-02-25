class Show < ActiveRecord::Base

  def self.highest_rating
    Show.maximum('rating')
  end

  def self.most_popular_show
    rating = Show.maximum('rating')
    Show.find_by(rating)
  end

  def self.lowest_rating
    Show.minimum('rating')
  end

  def self.least_popular_show
    low_rating = Show.minimum('rating')
    Show.find_by(low_rating)
  end

  def self.ratings_sum
    Show.sum('rating')
  end
end
