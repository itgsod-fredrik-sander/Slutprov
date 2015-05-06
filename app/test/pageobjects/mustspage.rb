class Mustspage < Abstractpage
  def containing_musts?
    @page.has_content? 'Mustmeister'
  end

  def searchable? 
    @page.has_css? 'input[type=search]'
  end

  def redirecting_to_musts?
    @page.has_content? 'View now'
  end
end