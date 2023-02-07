class CurrenciesController < ApplicationController
  def first_currency
    @api_data = open("https://api.exchangerate.host/symbols").read
    @parsed_data = JSON.parse(@api_data)
    @symbols_hash = @parsed_data.fetch("symbols")
    @array_of_symbols = @symbols_hash.keys
    render({ :template => "currency_templates/page_one.html.erb"})
  end

  def second_currency
    @api_data = open("https://api.exchangerate.host/symbols").read
    @parsed_data = JSON.parse(@api_data)
    @symbols_hash = @parsed_data.fetch("symbols")
    @array_of_symbols = @symbols_hash.keys
    @from_symbol = params.fetch("from_dashboard")
    render({ :template => "currency_templates/second_currencies.html.erb"})
  end
end
