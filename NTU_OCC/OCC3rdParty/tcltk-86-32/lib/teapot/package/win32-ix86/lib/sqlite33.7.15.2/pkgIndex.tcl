#
# Tcl package index file
#
# Note sqlite*3* init specifically
#
package ifneeded sqlite3 3.7.15.2 \
    [list load [file join $dir sqlite37152.dll] Sqlite3]
