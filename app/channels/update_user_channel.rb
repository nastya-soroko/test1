class UpdateUserChannel < ApplicationCable::Channel
  def subscribed
    stream_from "update_user"
  end
end
