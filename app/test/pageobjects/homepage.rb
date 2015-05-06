class Homepage < Abstractpage
  def has_navbar?
    @page.has_css? '#navbar'
  end

  def has_header?
    @page.has_css? '#header'
  end

  def has_features?
    @page.has_features? '#features'
  end

  def continueable?
    @page.click_link 'View musts'
  end
end