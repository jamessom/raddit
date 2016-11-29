class Comment < ActiveRecord::Base
  # informa que um comentário
  # pertence a um usuário
  belongs_to :user
  # e um comentário pertence
  # a um link
  belongs_to :link
end
