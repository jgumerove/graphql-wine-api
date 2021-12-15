module Types
  class WineType < Types::BaseObject
    field :id, ID, null: false
    field :price, Integer, null: false
    field :country_id, Integer, null: false
    field :wine_category, String, null: false
    field :year, Integer, null: false
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
    field :title, String, null: false
    field :country, CountryType, null: false
  end
end
