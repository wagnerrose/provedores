json.array!(@provedors) do |provedor|
  json.extract! provedor, :id, :uf, :municipio, :microRegiao, :razaoSocial, :numAto, :termo, :endereco, :telefone
  json.url provedor_url(provedor, format: :json)
end
