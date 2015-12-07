$ ->
  fetchCart = ->
    Dispatches.performRequest Dispatches.providerUrl + '/cart.json', buildCart

  buildCart = (data) ->
    itemCount = data.item_count
    if itemCount > 0
      $('.cart em').html ' (' + data.item_count + ')'

  if $('.cart').length > 0
    fetchCart()
