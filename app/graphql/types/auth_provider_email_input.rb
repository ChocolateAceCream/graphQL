module Types
    class AuthProviderEmailInput < BaseInputObject

        graphql_name 'AUTH_PROVIDER_EMAIL'
        # the name is usually inferred by class name but can be overwritten
        # Call graphql_name with a new name to override the default name for this schema
        # member; OR call it without an argument to get the name of this schema
        # member.

        argument :email, String, required: true
        argument :password, String, required: true
    end

end
