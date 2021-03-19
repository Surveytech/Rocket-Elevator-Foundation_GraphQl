module Types
  class BuildingDetailType < Types::BaseObject
    field :info_key, String, null: true
    field :value, String, null: true
    field :created_at, String, null: true
    field :updated_at, String, null: true
    field :building_id, Integer, null: true
    field :id, ID, null: false


    field :building_detail_info, [String], null: true
    def building_detail_info
      return ["Id: #{object.id}", "Building Id: #{object.building_id}", "Information Key: #{object.info_key}", "Value: #{object.value}"]
    end

    field :building, Types::BuildingType, null: true
    def building
      Building.where(id: object.building_id)[0]
    end
  end
end
