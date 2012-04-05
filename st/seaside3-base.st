"Adopted from github.com/renggli/builder"
"Basic"
Gofer new
	squeaksource: 'Seaside30';
	package: 'Grease-Core';
	package: 'Grease-Pharo-Core';
	package: 'Seaside-Core';
	package: 'Seaside-Pharo-Core';
	package: 'Seaside-Canvas';
	package: 'Seaside-Pharo-Canvas';
	package: 'Seaside-Session';
	package: 'Seaside-Component';
	package: 'Seaside-RenderLoop';
	package: 'Seaside-Tools-Core';
	package: 'Seaside-Widgets';
	package: 'Seaside-Environment';
	package: 'Seaside-Pharo-Environment';
	load.
!
"Traditional"
Gofer new
	squeaksource: 'Seaside30';
	package: 'Seaside-Pharo-Continuation';
	package: 'Seaside-Flow';
	package: 'Seaside-Pharo-Flow';
	package: 'Seaside-Tools-Web';
	package: 'Seaside-Pharo-Tools-Web';
	package: 'Seaside-Development';
	package: 'Seaside-Pharo-Development';
	package: 'Seaside-Examples';
	load.
!
"RSS"
Gofer new
	squeaksource: 'Seaside30';
	package: 'RSS-Core';
	package: 'RSS-Examples';
	load.
!
"Javascript"
Gofer new
	squeaksource: 'Seaside30';
	package: 'Javascript-Core';
	package: 'Javascript-Pharo-Core';
	package: 'JQuery-Core';
	package: 'JQuery-UI';
	package: 'Prototype-Core';
	package: 'Scriptaculous-Core';
	package: 'Scriptaculous-Components';
	package: 'Comet-Core';
	package: 'Comet-Examples';
	package: 'Comet-Pharo-Core';
	load.
!
"Other Packages"
Gofer new
	squeaksource: 'Seaside30';
	package: 'Seaside-Welcome';
	package: 'Seaside-Pharo-Welcome';
	package: 'Seaside-HTML5';
	package: 'Seaside-InternetExplorer';
	package: 'Seaside-Email';
	package: 'Seaside-Pharo-Email';
	load.
!
"Addon Packages"
Gofer new
	squeaksource: 'Seaside30Addons';
	package: 'Seaside-REST-Core';
	package: 'Seaside-Pharo-REST-Core';
	load.
