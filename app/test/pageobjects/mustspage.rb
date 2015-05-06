class Mustspage < Abstractpage
  def containing_musts?
    @page.has_content? 'Mustmeister'
  end
end