class Order < ActiveRecord::Base

  belongs_to :user
  has_many :line_items

  monetize :total_cents, numericality: true

  validates :stripe_charge_id, presence: true

end

class Line_items < ActiveRecord::Base
end

class Products < ActiveRecord::Base
end
