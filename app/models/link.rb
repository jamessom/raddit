class Link < ActiveRecord::Base
  # Adicionna suporte a votação
  acts_as_votable
  # Recebe o relacionamento criado em user.rb
  # Informa que um link pertence a um usuário
  belongs_to :user
end
