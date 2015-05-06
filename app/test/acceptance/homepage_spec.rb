require_relative 'acceptance_helper'

describe('Homepage', :type => :feature) do

  before do
    DataMapper.auto_migrate!
    Seed.seed
    visit '/'
  end

  describe('Homepage') do 
  end

end