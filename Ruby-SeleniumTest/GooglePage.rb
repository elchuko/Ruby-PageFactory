class GooglePage
  include PageObject
  
  #Using name because if used with Id or Xpath, it searches_
  #the first suggestion and not the value sent to it
  text_field(:searchBox, :name => "q")
  
  #Using name because button doesn't have Id and if Xpath is used
  #searches for the suggestion and not the value sent to it
  button(:searchWithGoogle, :name => "btnK")

  def search(searchBox)
    self.searchBox = searchBox
    searchWithGoogle
    return SearchResultPage.new 
  end
  
end