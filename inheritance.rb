class Animal
  def speak
    "Hello!"
  end
end

class GoodDog < Animal
end

class Cat < Animal
end

sparky = GoodDog.new
paws = Cat.new
puts sparky.speak          
puts paws.speak  

class Animal
  def speak
    "Hello!"
  end
end

class GoodDog < Animal
  def speak
    "Bark"
  end
end

class Cat < Animal
end

sparky = GoodDog.new
paws = Cat.new
puts sparky.speak           # => Bark!
puts paws.speak             # => Hello!