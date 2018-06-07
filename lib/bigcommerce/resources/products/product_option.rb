# Product Option
# Options associated directly with a product.
# https://developer.bigcommerce.com/api/stores/v2/products/options

module Bigcommerce
  class ProductOption < Resource
    include Bigcommerce::SubresourceActions.new(
      uri: 'catalog/products/%d/options/%d',
      disable: %i[create update destroy destroy_all]
    )

    property :id
    property :option_id
    property :display_name
    property :sort_order
    property :is_required
    property :option_values
  end
end
