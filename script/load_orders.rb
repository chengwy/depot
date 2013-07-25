Order.transaction do
  (1..100).each do |i|
<<<<<<< HEAD
    Order.create(:name => "Customer #{i}", :address => "#{i} Main Street",
    :email => "customer-#{i}@example.com" , :pay_type => "Check")
  end
end
=======
    Order.create(name: "Customer #{i}", address: "#{i} Main Street",
      email: "customer-#{i}@example.com", pay_type: "Check")
  end
end
>>>>>>> c6290dc12a73ecc7a81fd35dfb55a42b829b4c10
