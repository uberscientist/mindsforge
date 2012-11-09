adjs = ['Serious', 'Alphabet', 'Absolute',
        'Meditative', 'Fun', 'Edgy',
        'Mathematical', 'Algebraic', 'Functional',
        'Quasi', 'Erroneous', 'Special', 'Quirky',
        'Miffed', 'Jumpy', 'Spastic', 'Creamy',
        'Delicious', 'Singular', 'Fluid', 'Complete',
        'Relative', 'Symbolic', 'Heiroglyphic', 'Masterful']

nouns = ['Design', 'Business', 'Programming', 'Studies',
         'Creation', 'Observations', 'Associations',
         'Commerce', 'Deductions', 'Soup', 'Dreams',
         'Jargon', 'Context', 'Visions', 'Projects',
         'Adventure', 'Conversations', 'Interactions',
         'Contemplations', 'Mathematics', 'Conjunctions']

$ = (id) -> document.getElementById(id)
adjIndex = 0
nounIndex = 0

genAdj = (index) ->
  adjIndex = index ?= Math.floor(Math.random() * adjs.length)
  $('adj').innerHTML = adjs[adjIndex]
  window.location.hash = "#{adjIndex}.#{nounIndex}"

genNoun = (index) ->
  nounIndex = index ?= Math.floor(Math.random() * nouns.length)
  $('noun').innerHTML = nouns[nounIndex]
  window.location.hash = "#{adjIndex}.#{nounIndex}"
  
genBoth = () ->
  if window.location.hash
    indices = window.location.hash.split('#').join('').split('.')
    genAdj(indices[0])
    genNoun(indices[1])
  else
    genAdj()
    genNoun()

window.onload = () ->
  genBoth()
  $('adj').addEventListener 'click', () ->
    genAdj()
  $('noun').addEventListener 'click', () ->
    genNoun()
