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

  # Public: Calculating rating of must instance
  #
  # must - the must's rating to be calculated
  #
  # Examples
  #
  # Must.calculate_rating(@must) => 3.5
  #
  # Calculates the rating of the element

  def self.calculate_rating(must)
    sum, divider = 0, must.reviews.size
    must.reviews.each {|review| sum += review.rating}
    sum/divider.to_f
  end
end