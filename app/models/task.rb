class Task < ActiveRecord::Base
  belongs_to :tasklist

  validates :title, presence: true
end
