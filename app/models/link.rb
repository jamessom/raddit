class Link < ActiveRecord::Base
  # Adicionna suporte a votação
  acts_as_votable
  # Recebe o relacionamento criado em user.rb
  # Informa que um link pertence a um usuário
  belongs_to :user
  # Adiciona suporte a comentarios
  # Informando que um link pode ter muitos comentários
  has_many :comments
end
