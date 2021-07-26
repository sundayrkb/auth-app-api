class UserSerializer
  include JSONAPI::Serializer

  attributes :name, :email, :password_digest, :role
  # has_many :messages
end
