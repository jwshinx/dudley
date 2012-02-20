class StoreController < ApplicationController
  layout "store"
  caches_page :index, :about, :press, :policies, :locations, :contact
  before_filter :logger_start

  def index
  end
  def about
  end

  def press
  end

  def policies
  end

  def locations
  end

  def contact
  end

end
