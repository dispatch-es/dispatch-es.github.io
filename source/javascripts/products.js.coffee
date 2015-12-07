$ ->
  fetchProduct = (handle) ->
    Dispatches.performRequest Dispatches.providerUrl + '/products/' + handle + '.json', buildProduct

  buildProduct = (data) ->
    variantsPlaceholderElem = $('[data-handle=' + data.product.handle + '] .product__variants')
    for variant in data.product.variants
      variantsPlaceholderElem.append JST['templates/variant'](
          providerUrl: Dispatches.providerUrl,
          variantId: variant.id,
          variantTitle: variant.title,
          variantPrice: variant.price
        )

  if $('.product').length > 0
    handles = $('[data-handle]').map(->
      $(this).data 'handle'
    ).get()

    for handle in handles
      fetchProduct handle
