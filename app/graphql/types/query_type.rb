module Types
  class QueryType < Types::BaseObject
    
    field :countries, [Types::CountryType], null: false do
      description "Displays all the countries"
    end
    
    def countries
      Country.all
    end

    field :wines, [Types::WineType], null: false do
      description "Displays all the wines"
    end

    def wines
      Wine.all
    end
  end
end
