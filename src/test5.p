define variable Parentbuffer as handle no-undo.

for each Order where (if valid-handle(parentbuffer) then CustNum = parentbuffer::CustNum else true):
    
    display Order.Ordernum Order.OrderDate.

end.