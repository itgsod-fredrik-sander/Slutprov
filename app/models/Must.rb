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
end