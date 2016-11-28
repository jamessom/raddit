class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Adiciona relacionamento com o model/table links, adicionar associação
  # Informa que o usuário tem muitos links
  has_many :links
end
