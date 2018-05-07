class UpdateUser
  attr_reader :user, :params

  def initialize(user, params)
    @user = user
    @params = params
  end

  def run
    if user.update(params)
      ActionCable.server.broadcast 'update_user',
        id: user.id.to_s,
        first_name: user.first_name,
        last_name: user.last_name,
        age: user.age
    else
      false
    end
  end
end
