require 'spec_helper'

describe PagesController do

render_views

  describe "GET 'home'" do
    it "should be successful" do
      get 'home'
      response.should be_success
    end
  end

  describe "GET 'paintballField'" do
    it "should be successful" do
      get 'paintballField'
      response.should be_success
    end
  end

  describe "GET 'paintballMarker'" do
    it "should be successful" do
      get 'paintballMarker'
      response.should be_success
    end
  end

end
