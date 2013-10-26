class ComparisonsController < ApplicationController

  def index
    Comparison.all
  end
end
