class Customers::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  def facebook
     # You need to implement the method below in your model (e.g. app/models/customer.rb)
     @customer = Customer.find_for_facebook_oauth(request.env["omniauth.auth"], current_customer)

     if @customer.persisted?
       sign_in_and_redirect @customer, :event => :authentication #this will throw if @customer is not activated
       set_flash_message(:notice, :success, :kind => "Facebook") if is_navigational_format?
     else
       session["devise.facebook_data"] = request.env["omniauth.auth"]
       redirect_to new_customer_registration_url
     end
   end
end