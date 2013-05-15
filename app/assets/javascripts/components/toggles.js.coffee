# Toggle hide/show
$(document).on "click", "[data-behavior='toggle:slide']", (event) ->
  event.preventDefault()
  $target = $( $(@).attr("href") )
  $target.slideToggle(200)
