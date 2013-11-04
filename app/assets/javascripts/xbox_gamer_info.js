

$(document).on('ajax:success', function(e, data) {
  console.log('Ajax Response data:', data);
  console.log("looking up API")  
});


$("#xbox-get").on('click', function(){
  console.log("Waiting on XBOX Leaders API")
  $(".pending").removeClass(".invisible");
  $(".pending").show();

}) 