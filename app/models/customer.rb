class Customer < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :omniauthable, :omniauth_providers => [:facebook]         

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me,
                  :order_ids, :cart_item_ids, :provider, :uid, :name
  # attr_accessible :title, :body
  
  has_many :orders
  has_many :tickets, :through => :orders
  has_many :cart_items
  
  
  def self.find_for_facebook_oauth(auth, signed_in_resource=nil)
    customer = Customer.where(:provider => auth.provider, :uid => auth.uid).first
    unless customer
      customer = Customer.create(name:auth.extra.raw_info.name,
                           provider:auth.provider,
                           uid:auth.uid,
                           email:auth.info.email,
                           password:Devise.friendly_token[0,20]
                           )
    end
    customer
  end
  
  def self.new_with_session(params, session)
    super.tap do |customer|
      if data = session["devise.facebook_data"] && session["devise.facebook_data"]["extra"]["raw_info"]
        customer.email = data["email"] if customer.email.blank?
      end
    end
  end
end
