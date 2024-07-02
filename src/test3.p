for each Customer,

    each Order 
        where Order.CustNum = Customer.CustNum
          and (if num-entries(Customer.address, " ") > 2 then integer(entry(1, Customer.address, " ")) > 12 else true ):
        display Customer.CustNum Customer.address  Order.Ordernum .
        display integer(entry(1, Customer.address, " ")) .
    

end.