#= require jquery
#= require jquery_ujs
#= require bootstrap-custom
#= require rails.validations
#= require rails.validations.simple_form
#= require_self

$ ->
  # Go Top
  $("a.go_top").click () ->
    $('html, body').animate({ scrollTop: 0 },300)
    return false

  $(window).bind 'scroll resize', ->
    scroll_from_top = $(window).scrollTop()
    if scroll_from_top >= 1
      $("a.go_top").show()
    else
      $("a.go_top").hide()
