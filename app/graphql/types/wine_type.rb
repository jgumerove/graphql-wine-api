module Types
  class WineType < Types::BaseObject
    field :id, ID, null: false
    field :title, String, null: true
    field :type, String, null: true
    field :year, Integer, null: true
    field :price, Integer, null: true
    field :country_id, Integer, null: false
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
    field :title, String, null: true
    field :type, String, null: true
    field :year, Integer, null: true
    field :price, Integer, null: true
    field :country, Types::ReferencesType, null: true
  end
end
