# ActiveRecord love blocks

Using blocks are a nice way to scope local variables inside the block.

```ruby
User.new do |user|
  user.name     = "John Doe"
  user.username = "john.doe"
  user.password = "john123"
end
```

See
http://blog.plataformatec.com.br/2012/07/active-record-loves-blocks/
for more details