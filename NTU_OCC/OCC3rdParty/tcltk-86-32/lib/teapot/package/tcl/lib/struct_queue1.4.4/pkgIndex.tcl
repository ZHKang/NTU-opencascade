
# @@ Meta Begin
# Package struct::queue 1.4.4
# Meta activestatetags ActiveTcl Public Tcllib
# Meta as::build::date 2013-01-09
# Meta as::origin      http://sourceforge.net/projects/tcllib
# Meta category        Tcl Data Structures
# Meta description     Create and manipulate queue objects
# Meta license         BSD
# Meta platform        tcl
# Meta recommend       {TclOO 0.6.1 1}
# Meta recommend       tcllibc
# Meta require         {Tcl 8.2}
# Meta subject         list set tree matrix pool graph stack skiplist
# Meta subject         record prioqueue
# Meta summary         struct::queue
# @@ Meta End


if {![package vsatisfies [package provide Tcl] 8.2]} return

package ifneeded struct::queue 1.4.4 [string map [list @ $dir] {
        # ACTIVESTATE TEAPOT-PKG BEGIN REQUIREMENTS

        package require Tcl 8.2

        # ACTIVESTATE TEAPOT-PKG END REQUIREMENTS

            source [file join {@} queue.tcl]

        # ACTIVESTATE TEAPOT-PKG BEGIN DECLARE

        package provide struct::queue 1.4.4

        # ACTIVESTATE TEAPOT-PKG END DECLARE
    }]
