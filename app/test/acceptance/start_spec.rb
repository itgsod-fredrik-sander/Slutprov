require_relative 'acceptance_helper'

describe('Start page', :type => :feature) do

  before do
    DataMapper.auto_migrate!
    Seed.seed
    visit '/'
  end

  describe('Loginpage') do 
    before do 
      @loginpage = Loginpage.new(page)
    end

    it 'should allow the user to login' do
      expect( @loginpage ).to be_loginable
    end
  end

end