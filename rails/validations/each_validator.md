# Using ActiveRecord's each validator

Taken from Rails's source code:
The easiest way to add custom validators for validating individual attributes
is with the convenient <tt>ActiveModel::EachValidator</tt>. For example:

```ruby
  class TitleValidator < ActiveModel::EachValidator
    def validate_each(record, attribute, value)
      record.errors[attribute] << 'must be Mr. Mrs. or Dr.' unless value.in?(['Mr.', 'Mrs.', 'Dr.'])
    end
  end
```

#validates is a shortcut to all default validators and any custom validator classes ending in 'Validator'.
```ruby
  class Person
    include ActiveModel::Validations
    attr_accessor :title

    validates :title, :presence => true
  end
```