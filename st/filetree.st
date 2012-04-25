Transcript show: 'Bootstrap filetree without Metacello etc'; cr.
Gofer new
	squeaksource3: 'FileTree';
	package: 'MonticelloFileTree-Core' constraint: [ :v | v branch = 'pharo13' ];
	load.
!
Transcript show: 'Load newest filetree from local git clone'; cr.
Gofer new
	repository: (MCFileTreeRepository new directory: 
		    (FileDirectory default / '../filetree/repository/'));
	package: 'MonticelloFileTree-Core';
	load.
!
Transcript show: 'Remove selector for undeclared/unwanted elements'; cr.
MCFileTreeRepository removeSelector: #metacelloProjectClass.
Object removeSelector: #writeCypressJsonOn:forHtml:indent:.
