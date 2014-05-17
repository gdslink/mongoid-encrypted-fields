# encoding: utf-8
#
# Used to store an encrypted string in Mongo
#
# Usage:
# field :social_security_number, type: Mongoid::EncryptedString
#
# Set with an unencrypted string
# p = Person.new()
# p.social_security_number = '123456789'
#
# Get returns the unencrypted string
# puts p.social_security_number -> '123456789'
#
# Use the encrypted property to see the encrypted value
# puts p.social_security_number.encrypted -> '....'
#
module Mongoid
  class EncryptedString < ::String
    include Mongoid::EncryptedField

    class << self

      def convert(object)
        new(object.to_s)
      end

    end
  end
end
