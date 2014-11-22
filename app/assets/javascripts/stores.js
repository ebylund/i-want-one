jQuery(function($){
  $('#test').click( function() {
    var hhApiKey = "pk8ynqyk6egx2esj8vcpedeu",
      searchCriteria = "Camera*";
    $.ajax({
      type: "GET",
      data: {
         format: 'json'
      },
      url: "http://api.remix.bestbuy.com/v1/categories?apiKey=" + hhApiKey + "&format=json&callback=?",
      cache: true,
      success: function(data) {
        for (x = 0; x <= data.categories.length; x++ ) {
          console.log(data.categories[x]);
        }
//        console.log(data);
      },
      dataType: 'json'
    });
  });
});
