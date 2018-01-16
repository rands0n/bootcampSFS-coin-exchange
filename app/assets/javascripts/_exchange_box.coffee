$(document).ready ->
  $('form').submit ->
    if $('form').attr('action') == '/exchange'
      fetch()

  $('#quantity').change ->
    if $('form').attr('action') == '/exchange'
      fetch()

  $('.change-money-type').click ->
    currency_value = $('#currency').val()
    currency_destination_value = $('#currency_destination').val()

    $('#currency').val(currency_destination_value)
    $('#currency_destination').val(currency_value)

    fetch()

  fetch = () ->
    $.ajax '/exchange',
      type: 'POST'
      dataType: 'json'
      data: {
        currency: $('#currency').val(),
        currency_destination: $('#currency_destination').val(),
        quantity: $('#quantity').val()
      }
      error: (jqXHR, textStatus, errorThrown) ->
        alert(textStatus)
      success: (data, text, jqXHR) ->
        $('#result').val(data.value)
    return false
