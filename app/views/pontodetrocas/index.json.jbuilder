json.array!(@pontodetrocas) do |pontodetroca|
  json.extract! pontodetroca, :id, :nome, :endereco, :email
  json.url pontodetroca_url(pontodetroca, format: :json)
end
