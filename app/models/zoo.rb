class Zoo < ActiveRecord::Base
  has_many :animals, dependent: :destroy
  delegate :lions, :bears, :elephants, to: :animals
end
