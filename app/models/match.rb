class Match
  include ActiveModel::Conversion
  extend ActiveModel::Naming

  attr_accessor :percentage, :user_id, :room_id

  belongs_to :user

end
