# Seed the RottenPotatoes DB with some movies.
# Safe to run more than once: movies are matched by title, so re-seeding
# updates existing rows instead of creating duplicates.
more_movies = [
  {:title => 'My Neighbor Totoro', :rating => 'G',
    :release_date => '16-Apr-1988',
    :description => 'Two sisters move to the countryside and befriend the forest spirits living nearby.'},
  {:title => 'Green Book', :rating => 'PG-13',
    :release_date => '16-Nov-2018',
    :description => 'A working-class bouncer drives a world-class pianist on a concert tour through the 1960s American South.'},
  {:title => 'Parasite', :rating => 'R',
    :release_date => '30-May-2019',
    :description => 'A struggling family schemes its way into the household of a wealthy one, with unexpected consequences.'},
  {:title => 'Nomadland', :rating => 'R',
    :release_date => '19-Feb-2021',
    :description => 'After losing everything in the recession, a woman sets out across the American West in her van.'},
  {:title => 'CODA', :rating => 'PG-13',
    :release_date => '13-Aug-2021',
    :description => "The only hearing member of a deaf family discovers a passion for singing while helping run the family's fishing business."},
  {:title => 'Spirited Away', :rating => 'PG',
    :release_date => '20-Jul-2001',
    :description => 'A young girl wanders into a world of spirits and must work in a bathhouse to free her parents.'},
  {:title => 'The Dark Knight', :rating => 'PG-13',
    :release_date => '18-Jul-2008',
    :description => 'Batman faces the Joker, a criminal mastermind who plunges Gotham City into chaos.'},
  {:title => 'Black Panther', :rating => 'PG-13',
    :release_date => '16-Feb-2018',
    :description => "T'Challa returns home to Wakanda to take the throne and must defend it from a dangerous challenger."},
  {:title => 'Everything Everywhere All at Once', :rating => 'R',
    :release_date => '25-Mar-2022',
    :description => 'A laundromat owner discovers she must connect with versions of herself in parallel universes to save the multiverse.'},
  {:title => 'Demon Slayer: Kimetsu no Yaiba – Infinity Castle', :rating => 'R',
    :release_date => '12-Sep-2025',
    :description => "Tanjiro and the Demon Slayer Corps are drawn into Muzan's shifting Infinity Castle for the start of their final battle against the Upper Rank demons."}
]

more_movies.each do |movie|
  Movie.find_or_initialize_by(title: movie[:title]).update!(movie)
end
