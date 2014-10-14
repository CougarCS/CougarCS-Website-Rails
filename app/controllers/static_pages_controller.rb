class StaticPagesController < ApplicationController
  def home
    @posts = Post.all
  end
  
  def about
  end
  
  def contact
  end
  
  def officers
  end
  
  def business_contact_form
  end
  
end
