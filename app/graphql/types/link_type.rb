module Types
    class LinkType < BaseObject
        field :id, ID, null: false
        field :url, String, null: false
        field :description, String, null: false
        # posted_by is automatically camelcased as postedBy
        # field can be nil, because we added users relationiship later
        # method option remaps field to an attribute of link model, so that you
        # can call link.posted_by to get a user object
        field :posted_by, UserType, null: true, method: :user
        field :votes, [VoteType], null: false
    end
end
