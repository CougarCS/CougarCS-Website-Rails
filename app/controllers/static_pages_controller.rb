class StaticPagesController < ApplicationController
  def home
    @posts = Post.all.order('date desc')
  end
  
  def about
  end
  
  def contact
  end
  
  def officers
  end
  
  def hackathons
  end
  
  def social_events
  end
  
  def calendar
  end
  
  def business_contact_form
  end
  
  def sponsors
  end
  
  def become_a_member
  end
  
end
