class Image < ApplicationRecord
    has_one_attached :image_name
    # def image_as_thumbnail
    #     image_name.variant(resize_to_limit: [300, 300]).processed
    # end

    has_one_attached :image_name do |attachable|
        attachable.variant :thumb, resize_to_limit: [300, 300]
    end

        has_many_attached :documents

    has_many_attached :documents do |attachable|
        attachable.variant :thumb, resize_to_limit: [200, 200]
    end
    has_one_attached :file_name
end
