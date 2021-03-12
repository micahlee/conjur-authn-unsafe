# frozen_string_literal: true

module Authentication
  module AuthnUnsafe
    class Authenticator
      def initialize(env:)
        @env = env
      end

      # The current LDAP authenticator expects to authenticate using the Conjur API
      # key returned by LDAP login. To support backward compatibility, the LDAP
      # authenticator will still accept the LDAP credentials directly.
      def valid?(input)
        input.credentials == 'thisisnotsafe'
      end
    end
  end
end
