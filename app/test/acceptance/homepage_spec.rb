require_relative 'acceptance_helper'

describe('Homepage', :type => :feature) do

  before do
    DataMapper.auto_migrate!
    Seed.seed
    visit '/'
    @loginpage = Loginpage.new(page)
    @loginpage.loginable?
    @homepage = Homepage.new(page)
  end

  it 'should contain a navbar' do 
    expect( @homepage.contains_navbar? ).to be true
  end

  it 'should contain a header' do 
    expect( @homepage.contains_header? ).to be true
  end

  it 'should contain features' do 
    expect( @homepage.contains_header? ).to be true
  end

  it 'should be continueable' do 
    expect( @homepage ).to be_continueable
  end

end