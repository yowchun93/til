## Setting up polymorphic association in Rails view

When creating polymorphic association in Rails view using a select dropdown, things can become a little tricky

```ruby
  class Task < ApplicationRecord
    belongs_to :assignee, polymorphic: true
    before_save :set_assignee

    def set_assignee
      if assignee_global_id
        self.assignee = ::GlobalID::Locator.locate(assignee_global_id)
      end
    end
  end

  class Client
    has_many :tasks, as: :assignee
  end

  class Partner
    has_many :tasks, as: :assignee
  end

  @assignees = Client.all + Partner.all
  <%= form.select :assignee_global_id, options_for_select  (@assignees. map { |v| [v.name, v.to_global_id] }), {}, class: "mt-1 block form-select w-full py-2 px-3 py-0 border border-gray-300 bg-white rounded-md shadow-sm focus:outline-none focus:shadow-outline-blue focus:border-blue-300 transition duration-150 ease-in-out sm:text-sm sm:leading-5"
  %">
```

## How does GID works
## https://github.com/rails/globalid
According to the documentation the following usecase is perfect for this scenario:

Another example is a drop-down list of options, consisting of both Users and Groups. Normally we'd need to come up with our own ad hoc scheme to reference them. With Global IDs, we have a universal identifier that works for objects of both classes.
