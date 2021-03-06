class Mustpage < Abstractpage
  def has_rating?(rating)
    @page.has_content? rating
  end

  def displaying_comment_amount?(amount)
    @page.has_content? amount
  end

  def displaying_comment?(title)
    @page.has_content? title
  end

  def contains_location?(location)
    @page.has_content? location
  end

  def contains_manufacturer?(manufacturer)
    @page.has_content? manufacturer
  end

  def contains_date?(date)
    @page.has_content? date
  end

  def contains_package?(package)
    @page.has_content? package
  end

  def postable?
    @page.find('#review-toggler').click
    @page.fill_in('title', :with => 'test')
    @page.fill_in('content', :with => 'A good post is meaningful')
    @page.select('1', :from => 'rating' )
    @page.click_button 'Submit'

    return true
  end

end