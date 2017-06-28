the_walt_disney_company = {
  movies: {
    animated: {
      princess_movies: ['Cinderella', 'Sleeping Beauty', 'The Little Mermaid'],
      animal_movies: ['The Lion King', 'Bambi', 'Lady and the Tramp']
    },
    live_action_movies: ['Pirates of the Caribbean', 'Saving Mr. Banks', 'Holes'],
    pixar: ['Toy Story', 'Finding Nemo', 'Ratatouille', 'Cars']
  },
  disney_parks: {
    north_america: ['Disneyland', 'Walt Disney World'],
    international: [
      'Tokyo Disney Resort',
      'Shanghai Disney Resort',
      'Hong Kong Disneyland Resort',
      'Disneyland Resort Paris'
    ],
    cruise_line: {
      fleet: ['Disney Magic', 'Disney Dream', 'Disney Fantasy', 'Disney Wonder'],
      ports: ['Barcelona', 'Copenhagen', 'New York', 'San Diego', 'Miami']
    }
  },
  disney_media_networks: ['ABC', 'ESPN', 'Freeform', 'Disney Channel']
}

# add the movie '101 Dalmations' to animated_movies in movies key
the_walt_disney_company[:movies][:animated][:animal_movies].push('101 Dalmations')
p the_walt_disney_company[:movies][:animated][:animal_movies]

# access 'Disneyland Resort Paris' in disney_parks
p the_walt_disney_company[:disney_parks][:international][3]

# reassign 'Miami' to 'Port Canaveral' in ports
the_walt_disney_company[:disney_parks][:cruise_line][:ports][4] = 'Port Canaveral'
p the_walt_disney_company[:disney_parks][:cruise_line][:ports]

# add an additional :studio_entertainment key to the_walt_disney_company hash,
# and populate array and alphabetize
the_walt_disney_company[:studio_entertainment] = []
the_walt_disney_company[:studio_entertainment].push('Marvel Studios', 'Lucasfilm', 'Disneynature')
p the_walt_disney_company[:studio_entertainment].sort

p the_walt_disney_company
