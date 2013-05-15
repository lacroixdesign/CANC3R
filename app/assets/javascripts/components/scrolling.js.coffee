jQuery ->
  $("#intro, #menu").localScroll
    hash: true
    onBefore: ->
      $("#menu").hide()
