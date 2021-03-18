class Plant < ApplicationRecord
  belongs_to :garden
  has_many :plant_tags, dependent: :destroy
  has_many :tags, through: :plant_tags

  validates :name, :image_url, presence: true
end

# plant = Plant.new(....)
# plant.name
# plant.image_url
# plant.garden_id # => id
# plant.garden # <#Garden id=1, name="My zen garden">
# plant.garden.name # => My zen garden
# plant.tags # => [<#Tag id=1, name="Orchids">, <#Tag id=2, name="Flowers">]

# <#Tag id=1, name="Orchids">
# <#Tag id=2, name="Flowers">
# <#Tag id=3, name="Cactus">
