class SongsController < AuthorizedController
  def index
       @user = User.get_music(current_user.token)
  end
end
