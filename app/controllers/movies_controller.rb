class MoviesController < AuthorizedController
  def index
    resp = User.get_movies(current_user.token)

    @movies = resp['movies']['data'].map { |movie| movie['name'] }
  end
end
