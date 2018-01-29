# Product Variant
# Variant associated with a product.

module Bigcommerce
  class Variant < Resource
    include Bigcommerce::SubresourceActions.new uri: 'catalog/products/%d/variants/%d'

    property :id
    property :sku
    property :sku_id
    property :product_id
    property :cost_price
    property :price
    property :weight
    property :width
    property :height
    property :depth
    property :is_free_shipping
    property :fixed_cost_shipping_price
    property :purchasing_disabled
    property :purchasing_disabled_message
    property :image_url
    property :upc
    property :inventory_level
    property :inventory_warning_level
    property :bin_picking_number
    property :option_values

    def self.all_variants_by_product_id(parent_id, params = {})
      raise ArgumentError if parent_id.nil?
      get path.build(parent_id), params
    end

    def self.all(params = {})
      get 'catalog/variants', params
    end

  end
end
