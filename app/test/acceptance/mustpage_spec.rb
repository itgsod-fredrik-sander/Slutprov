require_relative 'acceptance_helper'

describe('Mustspage', :type => :feature) do

  before do
    DataMapper.auto_migrate!
    Seed.seed
    visit '/'
    @loginpage = Loginpage.new(page)
    @loginpage.loginable?
    visit '/must/1'
  end

end 