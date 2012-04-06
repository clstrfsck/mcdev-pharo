"Adopted from github.com/renggli/builder"
"Basic"
Gofer new
	squeaksource: 'Seaside30';
	package: 'Grease-Tests-Core';
	package: 'Grease-Tests-Pharo-Core';
	package: 'Seaside-Tests-Core';
	package: 'Seaside-Tests-UTF8';
	package: 'Seaside-Tests-Pharo-Core';
	package: 'Seaside-Tests-Canvas';
	package: 'Seaside-Tests-Session';
	package: 'Seaside-Tests-Component';
	package: 'Seaside-Tests-RenderLoop';
	package: 'Seaside-Tests-Environment';
	load.
!
"Traditional"
Gofer new
	squeaksource: 'Seaside30';
	package: 'Seaside-Tests-Functional';
	package: 'Seaside-Tests-Pharo-Functional';
	package: 'Seaside-Tests-Pharo-Continuation';
	package: 'Seaside-Tests-Flow';
	package: 'Seaside-Tests-Tools-Web';
        package: 'Seaside-Tests-Development';
        package: 'Seaside-Tests-Pharo-Development';
	load.
!
"RSS"
Gofer new
	squeaksource: 'Seaside30';
	package: 'RSS-Tests-Core';
	load.
!
"Javascript"
Gofer new
	squeaksource: 'Seaside30';
	package: 'Javascript-Tests-Core';
	package: 'Javascript-Tests-Pharo-Core';
	package: 'JQuery-Tests-Core';
	package: 'JQuery-Tests-UI';
	package: 'Prototype-Tests-Core';
	package: 'Scriptaculous-Tests-Core';
	package: 'Scriptaculous-Tests-Components';
	package: 'Comet-Tests-Core';
	load.
!
"Other Packages"
Gofer new
	squeaksource: 'Seaside30';
	package: 'Seaside-Tests-HTML5';
	package: 'Seaside-Tests-InternetExplorer';
	package: 'Seaside-Tests-Email';
	package: 'Seaside-Tests-Pharo-Email';
	load.
!
"Addon Packages"
Gofer new
	squeaksource: 'Seaside30Addons';
	package: 'Seaside-Tests-REST-Core';
	load.
