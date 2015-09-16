$ ->
  $('#zbest_services').imagesLoaded ->
    $('#zbest_services').masonry
      itemSelector: '.small_image'
      isFitWidth: true