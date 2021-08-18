class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :username, :created_at, :updated_at
end
