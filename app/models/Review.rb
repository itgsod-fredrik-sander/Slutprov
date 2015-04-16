class Review
  include DataMapper::Resource

  property :id, Serial
  property :title, String
  property :content, Text
  property :rating, Integer

  belongs_to :user
  belongs_to :must
end