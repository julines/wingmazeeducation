class WelcomeController < ApplicationController
  before_filter :set_active_tab
  def index
  end
  
  def testimonials
  end
  
  def methods
  end
  
  def prices
  end
  
  def location
  end
  
  def careers
  end
  
  def contact
  end
  
  private
  def set_active_tab
    @active_tab = action_name.blank? ? '' : action_name.to_s
  end
end
