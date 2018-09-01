class Post < ApplicationRecord
    paginates_per 10
    has_many :post_tag_relations
    default_scope -> { order(created_at: :desc) }
    has_many :tags, through: :post_tag_relations
    has_many :likes
    belongs_to :user
    mount_uploader :picture, PictureUploader
    validates :title, presence: true
    validates :content, presence: true
    def like_count
        likes.count
    end
end
