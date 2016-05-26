$(function(){
   getCurrentUserProfile(function(user){
      $("#aProfile").text(user.fullname + ' ');
      $("#aProfile").append('<span class="caret"></span>');
   });

   var authToken = JSON.parse(sessionStorage["auth-token"]);
   var currentFlatsUri = authToken["links"]["current-flat"].uri;



   loadFlats(currentFlatsUri, function(flats){
      $("#stings-list").empty();
      processFlatsCollection(flats);
   });
});

   $("#formCrearpiso").submit(function(e){
      e.preventDefault();
      e.stopImmediatePropagation();
      $("#buttonCrearpiso").blur();
	  	window.location.replace('crearpiso.html');
	
    });

function previousStings(){
  loadFlats($('#formPrevious').attr('action'), function(flats){
    processFlatsCollection(flats);
  });
}

function processFlatsCollection(flats){

 	var lastIndex = flats["flats"].length-1;
	
	console.log(lastIndex);
  $.each(flats["flats"], function(i,flats){

      flats.links=linksToMap(flats.links);
      var edit = flats.userid ==JSON.parse(sessionStorage["auth-token"]).userid;
      $("#stings-list").append(listItemHTML(flats.links["self"].uri, flats.address, flats.description, flats.lastModified, flats.creationTimestamp, flats.id, flats.numpartner));
      if(i==0)
        $("#buttonUpdate").click(function(){alert("I don't do anything, implement me!")});
     if(i==lastIndex){
      $('#formPrevious').attr('action', flats["links"].previous.uri);}
  });

   $("#formPrevious").submit(function(e){
      e.preventDefault();
      e.stopImmediatePropagation();
      previousStings();
      $("#buttonPrevious").blur();
    });

  $("a.list-group-item").click(function(e){
    e.preventDefault();
    e.stopImmediatePropagation();
    var uri = $(this).attr("href");
	sessionStorage["uri-flat"] = JSON.stringify(uri);
	var uri = JSON.parse(sessionStorage["uri-flat"]);
	console.log(uri);

 
    getFlat(uri, function(flat){

      // In this example we only log the sting
      console.log(flat);	
	
     var flat2 = JSON.parse(JSON.stringify(flat))
	console.log(flat2);
	sessionStorage["flat"] = JSON.stringify(flat2);
	var flatjson = JSON.parse(sessionStorage["flat"]);
	console.log(flatjson);
  	window.location.replace('descriptionflat.html');
    });
  });
  $(".glyphicon-pencil").click(function(e){
    e.preventDefault();
    alert("This should open a sting editor. But this is only an example.");});
}

$("#aCloseSession").click(function(e){
  e.preventDefault();
  logout(function(){
    window.location.replace('index.html');
  });
});

$("#aGoToProfile").click(function(e){
  e.preventDefault();
    window.location.replace('micuenta.html');
});

function listItemHTML(uri, address, description,lastModifield, creationTimestamp, id, numpartner){


lastModifieldformat = lastModifield;
var lastModifield = new Date( lastModifieldformat );
creationTimestampformat= creationTimestamp;
var creationTimestamp = new Date( creationTimestampformat );

  var a = '<a class="list-group-item" href="'+ uri +'/'+ id + '">';
  var p = '<p class="list-group-item-text unclickable">' + 'Descripción del piso: '+ description+ '</p>';
  var m = '<m class="list-group-item-text unclickable">' +  'Direcion del piso: '+ address+ '</m>';
  var creationTimestamp = '<h6 class="list-group-item-heading unclickable" align="right">'+ 'Fecha de creacón : ' + creationTimestamp +'</h6>';;
  var lastModifield = '<h6 class="list-group-item-heading unclickable" align="right">'+ 'Ultima modificacion: '+   lastModifield +'</h6>';;
  return a + p + m  + creationTimestamp + lastModifield + '</a>';
}
