class WordDef

  @@def = []

  define_method(:initialize) do |defin|
    @defin = defin
  end

  define_method(:def) do
    @defin
  end

  define_method(:save) do
    @@def.push(self)
  end

  define_singleton_method(:clear) do
    @@def = []
  end

  define_singleton_method(:all) do
    @@def
  end
  
end
