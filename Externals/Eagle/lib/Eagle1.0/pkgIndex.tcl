###############################################################################
#
# pkgIndex.tcl --
#
# Extensible Adaptable Generalized Logic Engine (Eagle)
# Package Index File
#
# Copyright (c) 2007-2012 by Joe Mistachkin.  All rights reserved.
#
# See the file "license.terms" for information on usage and redistribution of
# this file, and for a DISCLAIMER OF ALL WARRANTIES.
#
# RCS: @(#) $Id: $
#
###############################################################################

if {![package vsatisfies [package provide Tcl] 8.4]} {return}
if {[string length [package provide Eagle]] > 0} then {return}

package ifneeded EagleLibrary 1.0 [list source [file join $dir init.eagle]]
package ifneeded EagleSafe 1.0 [list source [file join $dir safe.eagle]]
package ifneeded EagleShell 1.0 [list source [file join $dir shell.eagle]]
package ifneeded EagleTest 1.0 [list source [file join $dir test.eagle]]
package ifneeded NativeTcl 1.0 [list package provide NativeTcl 1.0]
