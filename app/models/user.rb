class User < ApplicationRecord
    #Validations
   validates_presence_of :login, :password_digest
   validates :login, uniqueness: true
 
   #encrypt password
   has_secure_password
end
