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

  it 'should contain musts in a table' do 
    expect( @mustspage ).to be_containing_musts
  end

  #it 'should be searchable', :driver => :selenium do 
  #  expect( @mustspage ).to be_searchable
  #end

  #it 'should redirect to different musts', :driver => :selenium do
  #  expect( @mustspage ).to be_redirecting_to_musts
  #end 

end 