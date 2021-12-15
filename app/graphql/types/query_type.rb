module Types
  class QueryType < Types::BaseObject
    
    field :countries, [Types::CountryType], null: false
    def countries
      Country.all
    end

    field :wines, [Types::WineType], null: false
    def wines
      Wine.all
    end
  end
end
