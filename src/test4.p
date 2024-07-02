def var lStartDateString as char initial "2023".
def var lUseDateLimit as log.

//smessage date(lStartDateString).
for each Order where (if lUseDateLimit then Order.OrderDate > date(lStartDateString) else true):
    
    disp Order.Ordernum Order.OrderDate.

end.