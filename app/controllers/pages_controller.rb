class PagesController < ApplicationController
  skip_before_action :authenticate_user!, except: [:product, :index]

  def home
  end
end
