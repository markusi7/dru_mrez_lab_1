class MovieSerializer

  attr_accessor :image, :title, :year, :duration, :plot

  def initialize(data)
    @data = data
    pretty
  end

  def pretty
    if @data['Response'] == 'True'
      self.title = @data['Title']
      self.year = @data['Year']
      self.duration = @data['Runtime']
      self.plot = @data['Plot']
      self.image = @data['Poster']
    end
  end
end
