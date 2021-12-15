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

    field :country, Types::CountryType, null: false do
      description "Returns details of specific country"
      argument :id, ID, required: true
    end

    def country(id: id)
      Country.find_by(id: id)
    end

  end
end
