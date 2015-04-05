module Spree
  class HomeController < Spree::StoreController
    helper 'spree/products'
    respond_to :html

    def index
      @searcher = build_searcher(params.merge(include_images: true))
      @products = Spree::Product.all
      @taxonomies = Spree::Taxonomy.includes(root: :children)
    end
  end
end
