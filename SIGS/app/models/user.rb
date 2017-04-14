class User < ApplicationRecord
  has_one :coordinator, dependent: :destroy
  has_one :administrative_assistant, dependent: :destroy
  has_one :department_assistant, dependent: :destroy

#name
validates_length_of :name,
		:within => 7..100,
		:too_short => 'Nome tem que ter no minimo 7 caracters',
		:too_long => 'Nome tem que ter no maximo 100 caracters'

# email
VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(?:\.[a-z\d\-]+)*\.[a-z]+\z/i

validates :email, :presence => { :message => 'Email nao pode ser vazio' },
	length: { maximum: 50}, uniqueness: true,
	format: { with: VALID_EMAIL_REGEX, :message => 'Insira um e-mail válido'}

#password
validates :password, length: { minimum: 6, maximum: 20, :message => 'Senha deve possuir no mínimo 4 e máximo de 16 caracteres' }, confirmation: true, on: :create		  			

# cpf
VALID_CPF_REGEX = /\A[0-9]{3}?[0-9]{3}?[0-9]{3}?[0-9]{2}\z/i

validates :cpf, :presence => { :message => 'Cpf nao pode ser vazio' },
	length: { maximum: 11}, uniqueness: true,
	format: { with: VALID_CPF_REGEX, :message => 'Insira um Cpf válido'}

end