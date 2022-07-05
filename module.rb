module MyCustomeModule
  def custom_module_1
    puts "Custom Module 1"
  end

  def custom_module_2
    puts "Custom Module 2"
  end
end

# Các `class` gọi bằng include đến `module` theo phương thức `instance method``
class A
  include MyCustomeModule
end

# Các `class` gọi bằng extend đến `module` theo phương thức `class method`
class B
  extend MyCustomeModule
end

# True answer
puts A.new.custom_module_1
puts B.custom_module_2

# False answer: exception NoMethodError
puts A.custom_module_1
puts B.new.custom_module_2