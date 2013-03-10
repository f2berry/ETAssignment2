require 'spec_helper'

describe PagesController do
 render_views

  describe "GET 'home'" do
    it "returns http success" do
      get 'home'
      response.should be_success
    end
  end

  describe "GET 'paintballField'" do
    it "returns http success" do
      get 'paintballField'
      response.should be_success
    end
  end

  describe "GET 'paintballMarker'" do
    it "returns http success" do
      get 'paintballMarker'
      response.should be_success
    end
  end
  
  describe "Make a test for the Home Page" do

	it "has good title" do
		get 'home'
		response.should have_selector("title", :content => "WikiRails | Home")
	end

	it "has header" do
		get 'home'
		response.should have_selector("header")
	end

	it "has footer" do
		get 'home'
		response.should have_selector("footer")
	end

	it "has nav" do
		get 'home'
		response.should have_selector("nav")
	end
end

describe "Make a test for the First Page" do

	it "has good title" do
		get 'paintballField'
		response.should have_selector("title", :content => "WikiRails | Paintball field")
	end

	it "has header" do
		get 'paintballField'
		response.should have_selector("header")
	end

	it "has footer" do
		get 'paintballField'
		response.should have_selector("footer")
	end

	it "has nav" do
		get 'paintballField'
		response.should have_selector("nav")
	end
end

describe "Make a test for the Second Page" do

	it "has good title" do
		get 'paintballMarker'
		response.should have_selector("title", :content => "WikiRails | Paintball marker")
	end

	it "has header" do
		get 'paintballMarker'
		response.should have_selector("header")
	end

	it "has footer" do
		get 'paintballMarker'
		response.should have_selector("footer")
	end

	it "has nav" do
		get 'paintballMarker'
		response.should have_selector("nav")
	end
end

describe "Test all routes for wiki" do

	it "routes to home" do
		expect(:get => "/").to route_to(:controller => "pages", :action => "home")
	end

	it "routes to the first page" do
		expect(:get => "/pages/paintballField").to route_to(:controller => "pages", :action => "paintballField")
	end

	it "routes to the second page" do
		expect(:get => "/pages/paintballMarker").to route_to(:controller => "pages", :action => "paintballMarker")
	end	
end

end