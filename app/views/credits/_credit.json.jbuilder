json.extract! credit, :id, :type, :otherText, :creditorName, :sdate, :edate, :currency, :totalAmount, :monthAmount, :restAmount, :created_at, :updated_at
json.url credit_url(credit, format: :json)