class Product < ApplicationRecord
    searchkick text_middle: [:name, :details]
end
