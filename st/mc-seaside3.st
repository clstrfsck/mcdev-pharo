Transcript show: 'Seaside 3.0'; cr.
Gofer new
        squeaksource: 'MetacelloRepository';
        package: 'ConfigurationOfSeaside30';
        load.
(Smalltalk at: #ConfigurationOfSeaside30) load.
!
Transcript show: 'AJP Server'; cr.
Gofer new
        squeaksource: 'ajp';
        package: 'YBuffer-Core';
        package: 'YBuffer-Pharo-Core';
        package: 'AJP-Core';
        package: 'AJP-Pharo-Core';
        load.
!
Transcript show: 'RFB (VNC) server/client'; cr.
Gofer new
        squeaksource: 'MetacelloRepository';
        package: 'ConfigurationOfRFB';
        load.
(Smalltalk at: #ConfigurationOfRFB) load.
!
Transcript show: 'Fixes for abnormally terminated connections'; cr.
FileStream fileIn: '../cs/RFBFixes.1.cs'.
