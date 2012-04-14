"Adopted from github.com/renggli/builder"
Transcript show: 'Zinc Server'; cr.
Gofer new
	squeaksource: 'ZincHTTPComponents';
	"package: 'Zinc-HTTP';" "Already included in Pharo 1.4"
	package: 'Zinc-Seaside';
	load.
