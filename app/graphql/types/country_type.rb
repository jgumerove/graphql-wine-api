module Types
  class CountryType < Types::BaseObject
    field :id, ID, null: false
    field :name, String, null: false
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
    field :wines, [WineType], null: false
    field :wine_count, Integer, null: true
    def wine_count
      object.wines.count
    end
  end
end
