module ApplicationHelper

    def format_currency(price)
        currency = Money.new(price,"AUD").format
    end

    def total_cost(transport_cost_cents, price_cents)
        
        transport_cost = transport_cost_cents.floor(2)
        price = price_cents.floor(2)
    
        total_cost = (transport_cost + price)*100
      end

end
