json.array!(@usuarios) do |usuario|
  json.extract! usuario, :usuario
  json.url usuario_url(usuario, format: :json)
end
