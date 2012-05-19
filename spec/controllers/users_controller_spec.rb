require 'spec_helper'

describe UsersController do
  render_views

  describe "hiting the 'new' page" do
    it "should be successful" do
      get 'new'
      response.should be_success
    end
    
    it "should have title with 'new' in it" do
      get 'new'
      response.should have_selector("title", :content => "Sign up")
    end
  end

end
