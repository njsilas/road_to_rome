class User < ApplicationRecord
has_secure_password
has_many :booked_trips
has_many :flights, through: :booked_trips
has_many :destinations
validates :email, 
presence: { is: true, message: "is required" }, 
format: { with: /@/, message: "Needs to be valid email" }, 
uniqueness: { is: true, message: "account already exists" }

 def self.from_omniauth(response)
    User.find_or_create_by(uid: response[:uid], provider: response[:provider]) do |u|
      u.name = response[:info][:name]
      u.email = response[:info][:email]
      u.password = SecureRandom.hex(15)
    end
  end
  
 
#def doublecheck
    
    #if self.valid?
        
     #   redirect_to user_path(@user.id)
    #else 
     #   render '/signup'
    #end
  #end
end
