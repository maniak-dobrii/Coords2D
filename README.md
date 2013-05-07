Coords2D
===============

Convenience lightweight class for storing location as NSObject subclass.
Could be used with archievers, as far as it supports NSCoding.
 
Stores only lattitude, longitude and timestamp.

# Requirements
* iOS 4.0+ (not tested with below), enabled or disabled ARC.
* CoreLocation framework.

# Installation
1. Drag Coords2D folder to XCode project.
2. Add #import "Coords2D.h" to file, where you need to access Coords2D from.
3. If you want to use convenience CLLocation category add #import "CLLocation+Coords2D.h"

# Usage
Check Coords2D.m for documentation. You may generate user readable documentation via [Doxygen] [1].

# Licence
Coords2D is released under the MIT License by MANIAK_dobrii (Солодовниченко Михаил).


[1]: http://doxygen.org/ "Doxygen"
