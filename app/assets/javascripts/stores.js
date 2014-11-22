$(document).ready({
  var hhApiKey = "pk8ynqyk6egx2esj8vcpedeu",
      searchCriteria = "Camera*"
  $.ajax({
	type: "GET",
	url: "http://api.remix.bestbuy.com/v1/products(search=" + searchCriteria + ")?apiKey=" + hhApiKey + "&format=json&callback=?",
	cache: true,
	success: function() {
		alert('success');
	},
	dataType: 'json'
  });
});
