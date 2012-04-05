"Seaside 3.0"
Gofer new
        squeaksource: 'MetacelloRepository';
        package: 'ConfigurationOfSeaside30';
        load.
(Smalltalk at: #ConfigurationOfSeaside30) load.
!
"AJP Server"
Gofer new
        squeaksource: 'ajp';
        package: 'YBuffer-Core';
        package: 'YBuffer-Pharo-Core';
        package: 'AJP-Core';
        package: 'AJP-Pharo-Core';
        load.
!
"RFB (VNC) server/client"
Gofer new
        squeaksource: 'MetacelloRepository';
        package: 'ConfigurationOfRFB';
        load.
(Smalltalk at: #ConfigurationOfRFB) load.
"Fixes for abnormally terminated connections"
FileStream fileIn: '../cs/RFBFixes.1.cs'.
!
