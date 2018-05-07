App.create_user = App.cable.subscriptions.create('CreateUserChannel', {
  received: function(data) {
    $("#users").prepend(data.user);
  }
});
