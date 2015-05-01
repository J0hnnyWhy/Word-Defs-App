class WordDef
  define_method(:initialize) do |defin|
    @defin = defin
  end

  define_method(:def) do
    @defin
  end
end
