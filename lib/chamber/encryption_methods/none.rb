# frozen_string_literal: true

module  Chamber
module  EncryptionMethods
class   None
  def self.encrypt(_key, value, _encryption_keys)
    value
  end

  def self.decrypt(key, value, _decryption_keys)
    return value if value.nil?

    warn "WARNING: It appears that you would like to keep your information for #{key} " \
         "secure, however the value for that setting does not appear to be encrypted. " \
         "Make sure you run 'chamber secure' before committing."

    value
  end
end
end
end
