require_relative 'acceptance_helper'

describe('Mustpage', :type => :feature) do

  before do
    DataMapper.auto_migrate!
    Seed.seed
    visit '/'
    @loginpage = Loginpage.new(page)
    @loginpage.loginable?
    visit '/must/1'
    @mustpage = Mustpage.new(page)
  end

  it 'should display the correct rating' do 
    expect( @mustpage.has_rating? 4 ).to be true
  end

  it 'should display amount of comments' do 
    expect( @mustpage.displaying_comment_amount? 4 ).to be true
  end

  it 'should display correct comments' do 
    expect( @mustpage.displaying_comment? 'Ok taste').to be true 
    expect( @mustpage.displaying_comment? 'Welcoming').to be true
    expect( @mustpage.displaying_comment? 'Testy').to be false
  end

  it 'should display the correct location of origin' do 
    expect( @mustpage.contains_location? 'Unknown, Unknown' ).to be true
  end

  it 'should display the correct manufacturer date' do 
    expect( @mustpage.contains_date? '1999' ).to be true
  end

  it 'should display the correct manufacturer' do 
    expect( @mustpage.contains_manufacturer? 'Must Industries' ).to be true
  end

  it 'should display the correct package' do 
    expect( @mustpage.contains_package? 'Bottle' ).to be true
  end

  it 'should be able to post a new review', :driver => :selenium do 
    expect( @mustpage ).to be_postable
  end

  it 'should display the new review', :driver => :selenium do 
    visit '/must/1'
    expect( @mustpage.displaying_comment_amount? 5 ).to be true 
  end

end 