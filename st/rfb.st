Transcript crShow: 'RFB (VNC) server/client'.
Gofer new
        squeaksource: 'MetacelloRepository';
        package: 'ConfigurationOfRFB';
        load.
(Smalltalk at: #ConfigurationOfRFB) load.
!
Transcript crShow: 'Fixes for abnormally terminated connections'.
FileStream fileIn: '../cs/RFBFixes.1.cs'.
