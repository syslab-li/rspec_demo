class Post < ApplicationRecord
    
    validates :title, exclusion: { in: [nil, ""] }
    validates :content, exclusion: { in: [nil, ""] }

    belongs_to :user
end
