module Types
  class MutationType < Types::BaseObject
    field :update_wine_mutation, mutation: Mutations::UpdateWineMutation
    field :delete_wine_mutation, mutation: Mutations::DeleteWineMutation
    field :create_wine_mutation, mutation: Mutations::CreateWineMutation
    field :create_country_mutation, mutation: Mutations::CreateCountryMutation
  end
end
