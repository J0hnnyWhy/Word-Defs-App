class Word

  @@words = []

  define_method(:initialize) do |written|
    @written = written
  end

  define_method(:word) do
    @written
  end

  define_method(:save) do
    @@words.push(self)
  end

end
