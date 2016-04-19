# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
movies = Movie.create([
	{
	id: 1,
	title: 'The Matrix',
	rating: 'R',
	year: 1999,
	length: '2:16:31',
	genre: 22,
	score: 8,
	synopsis: "The Most Eye-Popping and Imaginative Movie of the Year. - Gannett. Breaking box office records as the biggest Easter opening ever, this special effects-driven tale follows Keanu Reeves (Speed, Devil's Advocate) and Oscar, Golden Globe and Emmy-nominee Laurence Fishburne (What's Love Got to Do with It?) on an explosive futuristic sci-fi adventure about a man who comes to believe that his everyday world is the product of a complex computer-driven digital matrix that feeds on humans. In his dangerous quest to find out the truth, he must figure out who is real and who he can trust. From the producer of the top boxoffice franchise, Lethal Weapon....one of the most visually dazzling and surrealistically plotted sci-fi films ever made. - Mr. Showbiz"}
	])

actors = Actor.create ([{id: 1, name: 'Nicholas Cage'}, {id: 2, name: 'Tom Cruise'}, {id: 3, name: 'Emma Stone'}])
directors = Director.create ([
	{id: 1, name: 'Quentin Tarantino'},
	{id: 2, name: 'Stephen Speilberg'},
	{id: 3, name: 'George Lucas'},
	{id: 4, name: 'JJ Abrams'}
	])
screenwriters = Screenwriter.create ([
	{id: 1, name: 'Andy Wachowksi'},
	{id: 2, name: 'Larry Wachowksi'},
	{id: 3, name: 'Richard Linklater'},
	{id: 4, name: 'Rian Johnson'},
	{id: 5, name: 'Rashida Jones'},
	{id: 6, name: 'Will McCormack'},
	{id: 7, name: 'Henry Selick'},
	{id: 8, name: 'Bert V. Royal'}
	])
studios = Studio.create ([
	{id: 1, name: '20th Century Fox'},
	{id: 2, name: 'Pixar'},
	{id: 3, name: 'Warner Bros'}
	])