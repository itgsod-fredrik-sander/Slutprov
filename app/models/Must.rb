class Must
  include DataMapper::Resource

  property :id, Serial
  property :name, String
  property :brand, String
  property :manufacturer, String
  property :package, String
  property :year, Integer
  property :location, String

  has n, :reviews

  def self.calculate_rating(must)
    sum, divider = 0, must.reviews.size
    must.reviews.each {|review| sum += review.rating}
    sum/divider.to_f
  end
end