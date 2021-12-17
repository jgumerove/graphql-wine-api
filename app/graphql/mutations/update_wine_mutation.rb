module Mutations
  class UpdateWineMutation < BaseMutation
    field :wine, Types::WineType, null: false
    argument :id, ID, required: true 
    argument :title, String, required: true
    argument :price, Integer, required: true
    argument :wine_category, String, required: true
    argument :year, Integer, required: true
    description "updates a given wine"

    def resolve(id: id, title: title, price: price, wine_category: wine_category, year: year)
      wine = Wine.find(id)
      if wine.update(title: title, price: price, wine_category: wine_category, year: year)
        { 
          wine: wine 
        }
      else 
        raise GraphQL::ExecutionError, wine.errors.full_messages.join(", ")
      end
    end
  end
end
