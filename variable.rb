=begin
### Diff of local, instance, global, class ###
_local: not prefix
_instance: prefix "@", các biến được tạo sẽ độc lập với nhau
_global: prefix "$"
_class: prefix "@@", các biến được tạo sẽ phụ thuộc với nhau
=end

# Local variable
local_variable = 'Outside Method'

def local_variable_scope
  puts local_variable = 'Inside Method'
end

local_variable_scope
puts local_variable
puts "\n"

# Instance variable
class InstancePerson
  def initialize(name)
    @name = name
  end

  def show
    puts @name
  end
end

first = InstancePerson.new('Lam')
first.show # Lam

second = InstancePerson.new('Nhung')
second.show # Nhung
first.show # Lam (Not change)
puts "\n"

# Global variable
$global_variable = 'Not change Method'

def global_variable_scope
  puts $global_variable = 'Changed Method'
end

global_variable_scope
puts $global_variable
puts "\n"

# Class variable
class ClassPerson
  def initialize(name)
    @@name = name
  end

  def show
    puts @@name
  end
end

first = ClassPerson.new('Lam')
first.show # Lam

second = ClassPerson.new('Nhung')
second.show # Nhung
first.show # Nhung (Changed)
puts "\n"

# Constant: warning already initialized constant AT_CONST
AT_CONST = 15
puts AT_CONST
AT_CONST = 25
puts AT_CONST
