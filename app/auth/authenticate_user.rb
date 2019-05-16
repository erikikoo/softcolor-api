class AuthenticateUser
  prepend SimpleCommand
  attr_accessor :login, :password

  #this is where parameters are taken when the command is called
  def initialize(login, password)
    @login = login
    @password = password
  end
  
  #this is where the result gets returned
  def call
    JsonWebToken.encode(user_id: user.id) if user
  end

  private

  def user
    user = User.find_by(login: login)
    return user if user && user.authenticate(password)

    errors.add :user_authentication, 'Login e/ou senha inválidos!'
    nil
  end
end