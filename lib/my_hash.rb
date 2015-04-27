class MyHash
  define_method(:initialize) do |key='', value=''|
    @key = key
    @value = value
    @keys = []
    @values = []
  end

  define_method(:store) do |key='', value=''|
    @values.push(value)
    @keys.push(key)
  end

  define_method(:fetch) do |key|
    index = @keys.index(key)
    @values.at(index)
  end

  define_method(:has_key?) do |key|
    @keys.include?(key)
  end

end
