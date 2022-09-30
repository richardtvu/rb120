# The Object Model

## Exercises

1. Create an object

```ruby
class Human
end

richard = Human.new
```


2. **Module**?

A module is a mix-in, something you can add to a class to give the class extra functionality.

> Allows us to group reusable code in one place.... Modules are also used as a namespace.

```ruby
module Gesticulable
  def gesticulate
    puts "**Waves arms while talking**"
  end
end

class Human
  include Gesticulable
end

richard = Human.new
richard.gesticulate
```