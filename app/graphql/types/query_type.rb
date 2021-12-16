module Types
  class QueryType < Types::BaseObject
    
    field :countries, [Types::CountryType], null: false do
      description "Displays all the countries"
    end

    def countries
      Country.all
    end

    field :all_Wines, [Types::WineType], null: false do
      description "displays all wines"
    end

    def all_Wines
      Wine.all
    end

    field :country, Types::CountryType, null: false do
      description "Returns details of specific country"
      argument :id, ID, required: true
    end

    def country(id: id)
      Country.find_by(id: id)
    end

    field :find_by_category, [Types::WineType], null: false do
      description "finds all the wines with a particluar category"
      argument :wine_category, String, required: true
    end

    def find_by_category(wine_category: wine_category)
      Wine.where(wine_category: wine_category)
    end
    

  end
end
