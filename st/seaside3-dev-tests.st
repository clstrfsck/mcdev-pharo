"Adopted from github.com/renggli/builder"
Transcript show: 'Traditional'; cr.
Gofer new
	squeaksource: 'Seaside30';
	package: 'Seaside-Tests-Examples';
	load.
!
Transcript show: 'Development and Admin Tools'; cr.
Gofer new
	squeaksource: 'Seaside30';
	package: 'Grease-Tests-Slime';
	package: 'Seaside-Tests-Slime';
	load.
!
Transcript show: 'Other Packages'; cr.
Gofer new
	squeaksource: 'Seaside30';
	package: 'Seaside-Tests-Welcome';
	load.
