App.update_user = App.cable.subscriptions.create('UpdateUserChannel', {
  received: function(data) {
    userId = "#user-" + data.id;
    $(userId + " #first-name").empty().append(data.first_name);
    $(userId + " #last-name").empty().append(data.last_name);
    $(userId + " #age").empty().append(data.age);
  }
});
