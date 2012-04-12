"Adopted from github.com/renggli/builder"
Transcript show: 'Run the Seaside 3.0 Tests'; cr.
HDTestReport runPackages: ((WADevelopment allPackages
    select: [ :each | each name includesSubString: '-Tests-' ])
    collect: [ :each | each name ]).
