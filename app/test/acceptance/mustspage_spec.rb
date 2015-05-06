require_relative 'acceptance_helper'

describe('Mustspage', :type => :feature) do

  before do
    DataMapper.auto_migrate!
    Seed.seed
    visit '/'
    @loginpage = Loginpage.new(page)
    @loginpage.loginable?
    @homepage = Homepage.new(page)
    @homepage.continue
    @mustspage = Mustspage.new(page)
  end

  it 'should contain musts' do 
    expect( @mustspage ).to be_containing_musts
  end
end