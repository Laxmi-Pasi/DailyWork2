class Userfeedback < ApplicationRecord
    belongs_to :user, optional: true
end
