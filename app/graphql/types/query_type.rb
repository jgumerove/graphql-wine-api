module Types
  class QueryType < Types::BaseObject
    
    field :countries, [Types::CountryType], null: false
    def countries
      Country.all
    end
  end
end
