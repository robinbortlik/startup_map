require 'spec_helper'

describe Application do
  
  it 'get home page', :request => true, :js =>true do 
    visit '/'
    page.should have_selector("#map_canvas")
  end

end