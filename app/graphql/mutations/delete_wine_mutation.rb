module Mutations
  class DeleteWineMutation < BaseMutation
    # TODO: define return fields
    # field :post, Types::PostType, null: false
    field :wine, Types::WineType, null: false
    field :id, ID, null: false
    argument :id, ID, required: true
    description "deletes a specific wine"

    # TODO: define arguments
    # argument :name, String, required: true

    # TODO: define resolve method
    def resolve(id: id)
      wine = Wine.find(id)
      wine.destroy
      { 
        id: id,
      }
    end
  end
end
