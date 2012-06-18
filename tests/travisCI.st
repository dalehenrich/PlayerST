| gitPath |
gitPath := (FileDirectory default directoryNamed: 'git_cache') fullName.
 
Metacello new
          baseline: 'BaseLineOfPlayerST';
  repository: 'filetree://', gitPath, '/PlayerST';
  load: 'PlayerST'.

"Run the tests"
MetacelloPlatform current authorName: 'testMonkey'. "These tests save code ... need an Author"

TravisCIHarness
        value: #('BaseLineOfPlayerST')
        value: 'TravisCISuccess.txt'
        value: 'TravisCIFailure.txt'.