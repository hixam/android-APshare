$(function(){
   getCurrentUserProfile(function(user){
      $("#aProfile").text(user.fullname + ' ');
      $("#aProfile").append('<span class="caret"></span>');
   });

   var authToken = JSON.parse(sessionStorage["auth-token"]);
   //var currentRoomsUri = authToken["links"]["current-rooms-list"].uri;
	var currentRoomsUri = JSON.parse(sessionStorage["uri-flat"]);
	currentRoomsUri = currentRoomsUri + '/room';
	console.log(currentRoomsUri);

   loadRoomsList(currentRoomsUri, function(rooms){
      $("#stings-list").empty();
      processRoomsCollection(rooms);
   });
});

 $("#buttonRegresar").click(function(){window.location.replace('descriptionflat.html')});
  

function previousRooms(){
  loadFlats($('#formPrevious').attr('action'), function(rooms){
    processRoomsCollection(rooms);
  });
}

function processRoomsCollection(rooms){

 	var lastIndex = rooms["rooms"].length-1;
	
	console.log(lastIndex);
  $.each(rooms["rooms"], function(i,rooms){

      rooms.links=linksToMap(rooms.links);
      var edit = rooms.userid ==JSON.parse(sessionStorage["auth-token"]).userid;
      $("#stings-list").append(listItemHTML(rooms.links["self"].uri, rooms.address, rooms.description, rooms.lastModified, 
        rooms.creationTimestamp, rooms.id, edit, rooms.girlorboy, rooms.sqm, rooms.price, rooms.filename, rooms.imageURL));
      if(i==0)
        $("#buttonUpdate").click(function(){alert("I don't do anything, implement me!")});
     if(i==lastIndex){
      $('#formPrevious').attr('action', rooms["links"].previous.uri);}
  });

   $("#formPrevious").submit(function(e){
      e.preventDefault();
      e.stopImmediatePropagation();
      previousRooms();
      $("#buttonPrevious").blur();
    });

  $("a.list-group-item").click(function(e){
    e.preventDefault();
    e.stopImmediatePropagation();
   // var uri = $(this).attr("href");
	//sessionStorage["uri-flat"] = JSON.stringify(uri);
	var uri = JSON.parse(sessionStorage["uri-flat"]);
	console.log(uri);
	uri = uri + '/room'+ $(this).attr("href");
	sessionStorage["uriroom"] = JSON.stringify(uri);
	var flatjson = JSON.parse(sessionStorage["uriroom"]);

	console.log(uri);

 
    getRoom(uri, function(room){

      // In this example we only log the sting
      console.log(room);	
	
     var Room2 = JSON.parse(JSON.stringify(room))
	console.log(rooms);
	sessionStorage["room"] = JSON.stringify(room);
	var flatjson = JSON.parse(sessionStorage["room"]);
	console.log(flatjson);
  	window.location.replace('descriptionroom.html');
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

function listItemHTML(uri, address, description,lastModifield, creationTimestamp, id, girlorboy, edit, sqm, price, filename, imageURL){

lastModifieldformat = lastModifield;
var lastModifield = new Date( lastModifieldformat );
creationTimestampformat= creationTimestamp;
var creationTimestamp = new Date( creationTimestampformat );

if( girlorboy == 0){
girlorboy= 'Indiferente';
}
else if( girlorboy == 1){
girlorboy = 'Sólo chicas';
}
else if (girlorboy == 2){
girlorboy = 'Sólo chicos';
}


  var a = '<a class="list-group-item" href="'+ '/'+ id + '">';
  var p = '<p class="list-group-item-text unclickable">' + ' Descripción: ' + description+ '</p>';
  var g = '<h6 class="list-group-item-heading unclickable" align="center">'+ 'Sexo de compañero :' +  girlorboy +'</h6>';;
  var sqm= '<h6 class="list-group-item-heading unclickable" align="center">'+  'Metros cuatradados de la habitación:' +sqm+ ' m²'+ '</h6>';;
  var price= '<h6 class="list-group-item-heading unclickable" align="center">'+ 'Precio: '+  price +'  (€)'+'</h6>';;
var imageURL = '<img  style=width:300px;height:228px; src=http://147.83.7.207:88/img/'+filename+'>';;
  var l = '<h6 class="list-group-item-heading unclickable" align="right">'+  creationTimestamp +'</h6>';;
  var h = '<h6 class="list-group-item-heading unclickable" align="right">'+  lastModifield +'</h6>';;
  return a + p + g + sqm + price+  imageURL+ l +h + '</a>';
}
