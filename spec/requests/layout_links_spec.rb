require 'spec_helper'

describe "LayoutLinks" do

  it "should have a Home page at '/pages/home'" do
    get '/pages/home'
    response.should have_selector('title', :content => "Home")
  end

end
