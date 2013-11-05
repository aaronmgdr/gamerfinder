

$(document).on('ajax:success', function(e, data) {
  console.log('Ajax Response data:', data);
  console.log("Finished")
  $("#feedback").empty()
  $("#feedback").html("Successfully Saved Gamer Tag <a href='#'' class='close'>&times;</a>")
 
});


$("#xbox-get").on('click', function(){
  console.log("Waiting on XBOX Leaders API")
  $("#feedback").html("<i class='fa fa-refresh fa-spin'></i> Waiting on XBOX Leaders API: takes about 10 seconds ").addClass("alert-box radius")

}) 