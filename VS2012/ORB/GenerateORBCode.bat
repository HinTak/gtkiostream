rem Copyright 2000-2018 Matt Flax <flatmax@flatmax.org>
rem   This file is part of GTK+ IOStream class set
rem
rem   GTK+ IOStream is free software; you can redistribute it and/or modify
rem   it under the terms of the GNU General Public License as published by
rem   the Free Software Foundation; either version 2 of the License, or
rem   (at your option) any later version.
rem
rem   GTK+ IOStream is distributed in the hope that it will be useful,
rem   but WITHOUT ANY WARRANTY; without even the implied warranty of
rem   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
rem   GNU General Public License for more details.
rem
rem   You have received a copy of the GNU General Public License
rem   along with GTK+ IOStream
rem

rem Author : Matt Flax <flatmax@flatmax.org>
rem Date   : 2013.09.09

if not exist ..\..\src\machineGeneratedGtkiostream goto dontRemove
rmdir /Q/S ..\..\src\machineGeneratedGtkiostream
:dontRemove

mkdir ..\..\src\machineGeneratedGtkiostream
slice2cpp --source-ext C --header-ext H --output-dir ..\..\src\machineGeneratedGtkiostream ..\..\src\ORBICE.ice
