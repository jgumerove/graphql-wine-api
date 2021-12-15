module Types
  class MutationType < Types::BaseObject
    field :create_wine_mutation, mutation: Mutations::CreateWineMutation
    field :create_country_mutation, mutation: Mutations::CreateCountryMutation
  end
end
