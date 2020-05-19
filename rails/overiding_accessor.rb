# Sometimes you might find yourself in a situation where you need to override the accessor.
# this override so that it always save the value as integer
def cutoff_period_quantity=(value)
  super(value.to_i)
end