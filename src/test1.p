def var lTreeNode as char no-undo initial "A".

for each SalesRep 
    where (if entry(1, lTreeNode) = "A" then true else RepName begins entry(2, lTreeNode)):
    display RepName.
end.