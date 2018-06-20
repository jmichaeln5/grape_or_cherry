class PagesController < ApplicationController
  before_action :authenticate_user!,  only: [:grape, :cherry]

  def home
  end

  def cherry
    @flavor = Flavor.new
  end

  def grape
    @flavor = Flavor.new
  end


end
