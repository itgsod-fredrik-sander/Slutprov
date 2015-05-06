require_relative 'acceptance_helper'

describe('Start page', :type => :feature) do

  before do
    DataMapper.auto_migrate!
    Seed.seed
    visit '/'
  end

  it 'should display the login element' do 
    expect( Loginpage.test ).to eq 'test'
  end

end