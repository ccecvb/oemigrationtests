/* 
No difference in batch execution, difference in interactive execution
*/
block-level on error undo, throw.

def var lCombo as char no-undo .

form
    lCombo view-as combo-box list-item-pairs "a","a","b","b"
    with frame fFrame.

do with frame fFrame:
    view.
    lCombo:Screen-value = "c".
    message "Got here, value is" Lcombo "screen is" lCombo:Screen-value.
end.    