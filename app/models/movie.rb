class Movie < ApplicationRecord
  # Direct associations

  belongs_to :director

  has_many   :reviews,
             dependent: :destroy

  has_many   :bookmarks,
             dependent: :destroy

  has_many   :characters,
             dependent: :destroy

  # Indirect associations

  has_many   :actors,
             through: :characters,
             source: :actor

  # Validations

  # Scopes

  def to_s
    title
  end
end
