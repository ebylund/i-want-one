jQuery(function($){

  $('#computers').click( function() {
    var hhApiKey = "pk8ynqyk6egx2esj8vcpedeu",
      searchCriteria = "Camera*";
    $.ajax({
      type: "GET",
      data: {
         format: 'json'
      },
      url: "http://api.remix.bestbuy.com/v1/products(search=" + searchCriteria + ")?apiKey=" + hhApiKey + "&format=json&callback=?",
      cache: true,
      success: function(data) {
        for (x = 0; x <= data.products.length-1; x++ ) {
          console.log(data.products[x].name);
            var $name = data.products[x].name;
            var $image = $('<img />').attr('src', data.products[x].image)
//           console.log($image[0].outerHTML);
            $('#products').append('<div class="brick">'+ $image[0].outerHTML +'<div class="info">' + $name);
//            $('.brick2').after($image[0].outerHTML);
        }
//        console.log(data);
      },
      dataType: 'json'
    });
  });

});


//    <div class="brick" id="phones">
//		        <%= image_tag('phones.jpg') %>
//		        <div class="info">
//		            <h3>Phones</h3>
//		        </div>
//		    </div>
