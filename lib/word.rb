class Word

  @@words = []

  define_method(:initialize) do |written|
    @written = written
    @defs = []
  end

  define_method(:word) do
    @written
  end

  define_method(:save) do
    @@words.push(self)
  end

  define_method(:def) do
    @defs
  end

  define_singleton_method(:all) do
    @@words
  end

  define_singleton_method(:clear) do
    @@words = []
  end

  define_method(:add_def) do |defi|
    @defs.push(defi)
  end


end
