## using strong params for multiple objects 

# We can allow arrays of objects, by permitting arrays
params.permit(parcel_collections: [ :agent_id, :order_ref, :token, :duration, customer_info: [:first_name, :last_name, :email, :phone ]])