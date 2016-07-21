class List < ActiveRecord::Base
  has_many :items

  def record_item!
    Item.create(list_id: id, added_on: DateTime.now)
  end
end
