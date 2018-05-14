class Post < ApplicationRecord
    has_many :post_tag_relations
    has_many :tags, through: :post_tag_relations 
    mount_uploader :picture, PictureUploader
end
