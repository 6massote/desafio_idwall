class ReportsFactory

  def self.create_reports(date, name, number_doc)
    t = File.read('./fixtures/templates/templates_reports.json')
    template = JSON.parse(t)
    template["parametros"]["cpf_data_de_nascimento"] = date
    template["parametros"]["cpf_nome"] = name
    template["parametros"]["cpf_numero"] = number_doc
    template
  end
end
