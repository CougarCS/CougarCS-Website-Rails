# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Post.create(title: '1st CougarCS Meeting For Fall 2014', body: 'First official Fall 2014 CougarCS meeting will be on Thursday, September 11 at 05:30 PM. We’ll go over all the new exciting things that’ll happen this year (like career fair, tailgate, etc.). We also have Dr. Hesam Panahi from Red Labs coming, who is  in charge of the startup incubator (accelerator) over at the UH Red Labs. In addition to that, Jared Bienz from Microsoft will be giving a talk on virtual reality, and will demo how to use the Oculus SDK in your Unity game!', date: '2014-09-09', author_id: 3)

Post.create(title: 'Houston Techfest', body: 'Houston Techfest is this Saturday September 13 at Reliant Center. Free to attend, over 1,500 attendees, with multiple tracks ranging from .NET, JavaScript, Mobile Development, Cloud, Agile Methods. Great opportunities to network and learn from professionals in the Houston area! Come see what the Houston Developer scene is all about!', date: '2014-09-08', author_id: 3)

Post.create(title: 'UH vs Grambling State Tailgating', body: 'Hello everyone! Our second tailgate will be this Saturday (9/6) before the football game against Grambling State. CougarCS and the CS Alumni will have our own Booth there. So come by and enjoy some FREE food and socializing before the game!!!', date: '2014-09-05', author_id: 3)