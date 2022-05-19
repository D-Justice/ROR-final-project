class CommentUserPostJoin < ApplicationRecord
    belongs_to :user, optional: true
    
end