class CriarRelatorio

  include HTTParty

  base_uri ENVIRONMENT["url_relatorio"]
  format :json
  headers 'Content-Type' => 'application/json',
          'Authorization' => '9a5c457e-d004-46d2-ad0b-b3f015af0c58'

#==================================================================================================
# Create Relatorio API
#==================================================================================================

  def post_criar_relatorio(body)
    self.class.post("/relatorios", :body => body.to_json)
  end
end
