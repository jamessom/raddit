class Link < ActiveRecord::Base
  # Recebe o relacionamento criado em user.rb
  # Informa que um link pertence a um usuário
  belongs_to :user
end
