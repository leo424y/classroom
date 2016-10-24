class Course < ApplicationRecord
  # http://stackoverflow.com/questions/38983666/validation-failed-class-must-exist
  # 4.1.2.11 :optional If you set the :optional option to true, then the presence of the associated object won't be validated. By default, this option is set to false.
  belongs_to :user, optional: true
  validates :title, presence: true
end
