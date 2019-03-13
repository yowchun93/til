# Testing Enqueued Jobs 

Testing enqueud jobs can sometimes be tricky. Rails provides a handy helper method for checking out the set of enqueued jobs at any given time. 

enqueued_jobs provides a store for all the current enqueud jobs. 

Similar to testing emails, test can be used to assert against the content of the SMS. 

```
Actual code: 
Notification::SendSmsJob.perform_later(
  customer.phone,
  I18n.t(
    'sms.parcel-collections.booked.simplypost',
    locale: self.customer.locale,
    tracking_number: self.tracking_number,
    agent: self.postco_location.name
  )
)    
```


```ruby

 it "sends return booking emails" do 
  form.submit; 
  expect(enqueued_jobs.select { |job| job[:job] == Notification::SendSmsJob}.map { |job| job[:args][1] }).to match_array([
    'PostCo X Retailer No-1: Great news! Your parcel has arrived at Company No-2. Present this code PCD542 to collect.'
end

```