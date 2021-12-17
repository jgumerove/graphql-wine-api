module Mutations
  class DeleteWineMutation < BaseMutation
    field :wine, Types::WineType, null: false
    field :id, ID, null: false
    argument :id, ID, required: true
    description "deletes a specific wine"

    def resolve(id: id)
      wine = Wine.find(id)
      wine.destroy
      { 
        wine: wine,
      }
    end
  end
end
