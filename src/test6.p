DEFINE VARIABLE cNotInt AS CHARACTER NO-UNDO INIT "value".
def var xxx as char.

DEFINE TEMP-TABLE ttTemp NO-UNDO
FIELD iKey as char.

create ttTemp.
assign ikey = "value".
create ttTemp.
assign ikey = "12".
create ttTemp.
assign ikey = "14".

// Silent fail...
for each ttTemp WHERE true OR xxx EQ string(INTEGER(cNotInt)):
    disp ttTemp.ikey.
END.

message "end".