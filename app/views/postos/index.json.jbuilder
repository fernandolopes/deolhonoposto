json.array!(@postos) do |posto|
  json.extract! posto, :id, :nome, :logradouro, :numero, :nota, :bairro, :cidade, :latitude, :longitude
  json.url posto_url(posto, format: :json)
end
