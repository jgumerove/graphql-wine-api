module Types
  class MutationType < Types::BaseObject
    field :create_country_mutation, mutation: Mutations::CreateCountryMutation
  end
end
