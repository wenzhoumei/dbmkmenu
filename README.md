dbmkmenu - dynamic menu
====================
dbmkmenu is an extension/fork of dmenu designed to save bookmarks globally.

Requirements
------------
In order to build *dbmkmenu_show* you need the Xlib header files.

To use dbmkmenu, you need *dmenu*. I'm planning on maybe changing this (its not hard, just tedious), but I haven't yet.

*xdg-open* is also technically a dependency for when you don't bind an action when passing the argument -d, but you don't necessarily need to use that feature and you can easily replace xdg-open with an alternative by editing the dbmkmenu script.

Installation
------------
Edit config.mk to match your local setup (dbmkmenu is installed into
the /usr/local namespace by default).

Afterwards enter the following command to build and install dbmkmenu
(if necessary as root):

    make clean install


Running dbmkmenu
-------------
dbmkmenu is a flexible bookmarking system for x derived from dmenu. It can be used as a global bookmarking menu, allowing you to store apps, links, directories, files, etc in a single menu. To do this, it looks inside the directory $DBMK\_HOME/actions, which contains *actions* - scripts that you can create that can take one parameter - that parameter is the *data*. In order to determine the *data* and *action* from your input, the program chooses the first one that is valid:

    {input} ::= {identifier}|{action}>{data}
    {input} ::= {data}|{action}
    {input} ::= {data} # For this one, the action is set as DEFAULT

Proper documentation
-------------
Doesn't exist right now and the code is pretty bad and messy
