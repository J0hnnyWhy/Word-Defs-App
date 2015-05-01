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

  define_singleton_method(:all) do
    @@words
  end

  define_singleton_method(:clear) do
    @@words = []
  end

end
