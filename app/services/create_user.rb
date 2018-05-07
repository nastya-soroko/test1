class CreateUser
  attr_reader :user

  def initialize(user)
    @user = user
  end

  def run
    if user.save
      ActionCable.server.broadcast 'create_user',
        user: ApplicationController.render(partial: 'users/user',
                                     locals: { user: user })
    else
      false
    end
  end
end
