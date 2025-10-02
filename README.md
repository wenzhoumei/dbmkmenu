dbmkmenu - dynamic menu
====================
dbmkmenu is a flexible bookmarking system for x derived from dmenu. It can be
used as a global bookmarking menu, allowing you to store apps, links, directories,
files, etc in a single menu.

To do this, it looks inside the directory $DBMK\_HOME/actions,
which contains *actions* - scripts that you can create that can take one parameter
- that parameter is the *data*. In order to determine the *data* and *action*
from your input, the program chooses the first one that is valid:

    {input} ::= {identifier}|{action}>{data}
    {input} ::= {data}|{action}
    {input} ::= {data} # For this one, the action is set as DEFAULT

Requirements
------------
In order to build *dbmkmenu_show* you need the Xlib header files.

To use dbmkmenu, you need *dmenu* and *xdg-open*.

Installation
------------
Edit config.mk to match your local setup (dbmkmenu is installed into
the /usr/local namespace by default).

Afterwards enter the following command to build and install dbmkmenu
(if necessary as root):

    make clean install
