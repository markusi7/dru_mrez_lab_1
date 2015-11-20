class MoviesController < AuthorizedController
  def index
       @user = User.get_movies(current_user.token)
  end
end
