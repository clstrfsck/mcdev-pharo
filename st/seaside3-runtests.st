"-*- Smalltalk -*-"
"Adopted from github.com/renggli/builder"
Transcript show: 'Run the Seaside 3.0 Tests'; cr.
HDTestReportWithLog runPackages: ((WADevelopment allPackages
    select: [ :each | each name includesSubString: '-Tests-' ])
    collect: [ :each | each name ]).
!
Transcript show: 'Run the Magritte 3 Tests'; cr.
HDTestReportWithLog runPackages: #(
        'Magritte-Tests-Model'
        'Magritte-Tests-Pharo-Model'
).
