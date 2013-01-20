var dispatcher = new WebSocketRails('localhost:4000/websocket');

$(document).ready(function() {

  $('#join a').bind("click", function() {

    var success = function(player) {
      $('#players ul').append("<li>" + player.name + "</li>");
    };

    var failure = function(player) {
      alert('failure')
    };

    dispatcher.trigger('lobby.join', {}, success, failure);
  });

});
