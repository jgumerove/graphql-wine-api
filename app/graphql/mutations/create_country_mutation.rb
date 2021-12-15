module Mutations
  class CreateCountryMutation < BaseMutation
    # TODO: define return fields
    field :country, Types::CountryType, null: false
    argument :name, String, required: true

    # TODO: define resolve method
    def resolve(name: name)
      @country = Country.new(name: name)
      if(@country.save)
        {
          country: @country
        }
      end
    end
  end
end
