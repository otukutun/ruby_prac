class Sample
  def original_attr_accessor(*symbols)
    symbols.each do |sym|
      define_method(sym) do
        instance_variable_get("@#{sym}")
      end
      define_method("#{sym}=") do |value|
        instance_variable_set("@#{sym}",value)
      end
    end

    original_attr_accessor :foo, :hoge
  end
end

sample = Sample.new
sample.original_attr_accessor(:test)

