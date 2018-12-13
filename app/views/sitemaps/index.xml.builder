xml.instruct! :xml, version: '1.0'
xml.tag! 'sitemapindex', 'xmlns' => "http://www.sitemaps.org/schemas/sitemap/0.9" do

  xml.tag! 'url' do
    xml.tag! 'loc', root_url
  end

  xml.tag! 'url' do
    xml.tag! 'loc', pages_url
  end

  @products.each do |product|
    xml.tag! 'url' do
      xml.tag! 'loc', product_url(product)
      xml.lastmod product.updated_at.strftime("%F")
    end
  end

  @distributeurs.each do |distributeur|
    xml.tag! 'url' do
      xml.tag! 'loc', distributeur_url(distributeur)
      xml.lastmod distributeur.updated_at.strftime("%F")
    end
  end
end
