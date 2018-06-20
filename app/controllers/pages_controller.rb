class PagesController < ApplicationController

  def home
  end

  def cherry
    @flavor = Flavor.new
  end

def grape
    @flavor = Flavor.new
  end


end
