$ ->
  window.Dispatches ||= {}
  Dispatches.providerUrl = $('body').data('provider')

  Dispatches.performRequest = (url, successFn) ->
    $.ajax
      url: url
      dataType: 'jsonp'
      crossDomain: true
      success: (data) ->
        successFn data
      error: (httpReq, status, exception) ->
        console.log status+" "+exception
