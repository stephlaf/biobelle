class SitemapsController < ApplicationController
  layout :false
  before_action :init_sitemap
  skip_before_action :authenticate_user!

  def index
    @products = Product.all
    @distributeurs = Distributeur.all
  end

  private

  def init_sitemap
    headers['Content-Type'] = 'application/xml'
  end
end
