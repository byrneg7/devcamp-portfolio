# frozen_string_literal: true

class PortfoliosController < ApplicationController
  def index
    @portfolios = Portfolio.all
  end
end
