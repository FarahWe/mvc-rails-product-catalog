class Product < ApplicationRecord
  def as_json(options = {})
    super({}.merge(options || {}))
  end
end
