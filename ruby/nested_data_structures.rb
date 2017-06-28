the_walt_disney_company = {
  movies: {
    animated: {
      princess_movies: ['Cinderella', 'Sleeping Beauty', 'The Little Mermaid'],
      animal_movies: ['The Lion King', 'Bambi', 'Lady and the Tramp'],
      live_action_movies: ['Pirates of the Caribbean', 'Saving Mr. Banks', 'Holes']
    },
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
  disney_media_networks: ['ABC', 'ESPN', 'A+E']
}

the_walt_disney_company[:movies][:animated][:live_action_movies].push('National Treasure')
p the_walt_disney_company
