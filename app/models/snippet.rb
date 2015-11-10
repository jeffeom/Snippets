class Snippet < ActiveRecord::Base
  belongs_to :code
  validates :title, presence: true, uniqueness: true
end
