class Homepage < Abstractpage
  def contains_navbar?
    @page.has_css? '#navbar'
  end

  def contains_header?
    @page.has_css? '#header'
  end

  def contains_features?
    @page.has_features? '#features'
  end

  def continueable?
    @page.has_content? 'View musts'
  end
end