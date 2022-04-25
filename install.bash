#!/usr/bin/bash

{
export NEWT_COLORS='
    root=white,black
    window=white,black
    textbox=green,black
    title=green,black
    listbox=yellow,black
    sellistbox=black,green
    actsellistbox=black,yellow
    border=blue,black
    actbutton=black,green
    '
fi
}

{
cd /tmp/ || return
wget https://raw.githubusercontent.com/Tearran/lkars/master/liblkars.0 &> wget.log
sudo cp liblkars.0 /usr/lib/
}

{
wget https://raw.githubusercontent.com/Tearran/lkars/master/lkars-config &> wget.log
sudo cp lkars-config /usr/bin/
sudo chmod +x /usr/bin/lkars-config
}

{
wget https://github.com/Tearran/iic-scanner/raw/main/iic-scanner
sudo cp iic-scanner /usr/bin/
sudo chmod +x /usr/bin/iic-scanner
}

( /usr/bin/lkars-config )
