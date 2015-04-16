require_relative 'models_helper'

describe User do

  before do
    DataMapper.auto_migrate!

    @user = User.create(username: 'Mira', password: '123')
    @must = Must.create(name: 'Extra', brand: 'Failsafe', manufacturer: 'Okända Industries', package: 'Bottle', year: 1990, location: 'Stockholm, Finland')
    @review = Review.create(title: 'Welcoming', rating: 5, user_id: 1, must_id: 1, content: 'pretium a lacus. In malesuada ultricies tellus nec elementum. Morbi quis volutpat mi. Vestibulum sit amet purus leo. Etiam bibendum, leo non vehicula mollis, nibh massa eleifend ante, blandit aliquet justo metus et leo.')
    @review = Review.create(title: 'Welcoming', rating: 2, user_id: 1, must_id: 1, content: 'pretium a lacus. In malesuada ultricies tellus nec elementum. Morbi quis volutpat mi. Vestibulum sit amet purus leo. Etiam bibendum, leo non vehicula mollis, nibh massa eleifend ante, blandit aliquet justo metus et leo.')
  end

  describe 'associations' do

    it 'should return the correct review' do
      expect( @must.reviews.first.title ).to match 'Welcoming'
    end

  end

  describe 'rating' do 
    it 'should calculate the correct rating' do 
      expect( @must.calculate_rating ).eq 3.5
    end
  end

end