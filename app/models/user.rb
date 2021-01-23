class User < ApplicationRecord

has_secure_password
has_many :booked_trips
has_many :flights, through: :booked_trips
has_many :destinations
validates :email, 
presence: { is: true, message: "Email Required" }, 
format: { with: /@/, message: "Needs to be valid email" }, 
uniqueness: { is: true, message: "Account Already Exists" }
validates :password, presence: { is: true, message: "Password required" }
  #def doublecheck
    
    #if self.valid?
        
     #   redirect_to user_path(@user.id)
    #else 
     #   render '/signup'
    #end
  #end
end
