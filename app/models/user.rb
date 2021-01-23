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
  def self.doublecheck
    if self.valid?
        self.save
        redirect_to users_path(self)
    else
        render :new
    end
  end
end
