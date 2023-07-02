class Post < ApplicationRecord
    validates :title, presence: true
    validates :content, length: { minimum: 250 }
    validates :summary, length: { in: 0..250 }
    validates :category, inclusion: { in:  ["Fiction", "Non-Fiction"] }
    validates :title, exclusion: { in: ["True Fact"]}
end
