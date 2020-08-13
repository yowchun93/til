# Testing behaviors for ActiveRecord Concerns

Testing ActiveRecord concerns can be really tricky, as you often need the actual object
to assert behaviors. Which can make the setup of the test alot trickier.

One way is to substitute the actual object with a dummy object, and including behaviors from the concern

```ruby
  module CachedAttributesUpdatable
    extend ActiveSupport::Concern

    class_methods do
      def cached_attributes_updateable(attributes:, with:, if_condition: :present?)
        after_update_commit do
          if send(if_condition) && (previous_changes.keys & attributes).present?
            with.call(self)
          end
        end
      end
    end
  end

  # instead of testing the actual ActiveRecord object, we use a dummy object
  RSpec.describe CachedAttributesUpdatable do
    class ClassWithCachedAttributesUpdatable < ActiveRecord::Base
      include CachedAttributesUpdatable

      ## has to specify the table_name
      self.table_name = 'users'

      attr_accessor :update_condition

      cached_attributes_updateable attributes: ['first_name', 'last_name'], with: ::DummyCachingClass, if_condition: :update_condition

      def update_condition
        @update_condition
      end
    end

    context 'on update' do
      context 'when condition is nil' do
        it 'does not call the caching class' do
          expect(DummyCachingClass).to_not receive(:call)
          dummy.update(first_name: 'Tobias')
        end
      end
    end
  end
```
