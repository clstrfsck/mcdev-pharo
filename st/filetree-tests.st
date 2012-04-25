Transcript show: 'Load newest filetree tests from local git clone'; cr.
Gofer new
	repository: (MCFileTreeRepository new directory: 
		    (FileDirectory default / '../filetree/tests/repository/'));
	package: 'MonticelloFileTree-Tests';
	load.
