class CreateUserChannel < ApplicationCable::Channel
  def subscribed
    stream_from "create_user"
  end
end
