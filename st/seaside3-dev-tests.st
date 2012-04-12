"Adopted from github.com/renggli/builder"
Transcript crShow: 'Traditional'.
Gofer new
	squeaksource: 'Seaside30';
	package: 'Seaside-Tests-Examples';
	load.
!
Transcript crShow: 'Development and Admin Tools'.
Gofer new
	squeaksource: 'Seaside30';
	package: 'Grease-Tests-Slime';
	package: 'Seaside-Tests-Slime';
	load.
!
Transcript crShow: 'Other Packages'.
Gofer new
	squeaksource: 'Seaside30';
	package: 'Seaside-Tests-Welcome';
	load.
