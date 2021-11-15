class MovieResource < ApplicationResource
  attribute :id, :integer, writable: false
  attribute :created_at, :datetime, writable: false
  attribute :updated_at, :datetime, writable: false
  attribute :title, :string
  attribute :year, :integer
  attribute :duration, :integer
  attribute :description, :string
  attribute :director_id, :integer

  # Direct associations

  has_many   :reviews

  has_many   :bookmarks

  has_many   :characters

  # Indirect associations

end
