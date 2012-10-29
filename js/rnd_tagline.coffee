adjs = ['Serious', 'Alphabet', 'Absolute',
        'Meditative', 'Fun', 'Edgy',
        'Mathematical', 'Algebraic', 'Functional',
        'Quasi', 'Erroneous', 'Special', 'Quirky',
        'Miffed', 'Jumpy', 'Spastic', 'Creamy',
        'Delicious', 'Singular', 'Fluid', 'Complete']

nouns = ['Design', 'Business', 'Programming', 'Studies',
         'Creation', 'Observations', 'Associations',
         'Commerce', 'Deductions', 'Soup', 'Dreams',
         'Jargon', 'Context', 'Visions', 'Projects',
         'Adventure', 'Conversations', 'Interactions']

$ = (id) -> document.getElementById(id)

genAdj = () ->
  rnd = Math.floor(Math.random() * adjs.length)
  $('adj').innerHTML = adjs[rnd]

genNoun = () ->
  rnd = Math.floor(Math.random() * nouns.length)
  $('noun').innerHTML = nouns[rnd]
  
genBoth = () ->
  genAdj()
  genNoun()

window.onload = () ->
  genBoth()
  $('adj').addEventListener 'click', () ->
    genAdj()
  $('noun').addEventListener 'click', () ->
    genNoun()
