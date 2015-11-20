class MoviesController < AuthorizedController
  def index
    resp = User.get_movies(current_user.token)

    @movies = resp['movies']['data'].map { |movie| movie['name'] }

    @movies_info =
      @movies.map do |movie|
        MovieSerializer.new(
          HTTParty.get("http://www.omdbapi.com/?t=#{CGI::escape(movie)}&y=&plot=short&r=json")
        )
      end.reject! { |m| m.title.nil? }
  end
end
