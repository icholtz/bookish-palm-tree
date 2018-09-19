class SimplePagesController < ApplicationController
  def index
  end
  def about
  end
  def contact
  end
  def hello
  end
  def landing_page
    @featured_product = Umbrella.first
  end

end
