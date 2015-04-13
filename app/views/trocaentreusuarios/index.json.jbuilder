json.array!(@trocaentreusuarios) do |trocaentreusuario|
  json.extract! trocaentreusuario, :id, :usuario_id, :pontodetroca_id, :pontoorigem, :pontodestino, :estado, :datatroca
  json.url trocaentreusuario_url(trocaentreusuario, format: :json)
end
