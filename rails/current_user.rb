
## Credit to: Ryan Bigg's blogpos
## https://ryanbigg.com/2017/06/current-considered-harmful

## sometimes, you need to access current_user in places outside of controller,
## this would be a convenient way to access current_user
def current_user
  @current_user ||= User.find(cookies.signed[:user_id])
end