require 'securerandom'

module Salt
  module_function

  def generate
    SecureRandom.hex
  end

  def encrypt(password, salt)
    Digest::SHA1.hexdigest(password + salt)
  end
end
