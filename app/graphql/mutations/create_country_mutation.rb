module Mutations
  class CreateCountryMutation < BaseMutation
    # TODO: define return fields
    field :country, Types::CountryType, null: false
    field :errors, [String], null: true
    argument :name, String, required: true


    # TODO: define resolve method
    def resolve(name: name)
      country = Country.new(name: name)
      if country.save
        {
          country: country,
          errors: []
        }
      else
        {
          country: nil,
          errors: country.errors.full_messages
        }
      end
    end
  end
end
