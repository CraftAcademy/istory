chapters = [{"parent_chapter"=>"", "title"=>"The story begins", "content"=>"There is a huge asteroid coming your way, what do you do?"},
  {"parent_chapter"=>"The story begins", "title"=>"Shoot it with a laser", "content"=>"Now a monster emerges from inside the asteroid, wyd?"},
  {"parent_chapter"=>"The story begins", "title"=>"Hide", "content"=>"The asteroid hits the starship, wyd?"},
  {"parent_chapter"=>"Shoot it with a laser", "title"=>"Talk", "content"=>"The monster says it wants to kill you, wyd?"},
  {"parent_chapter"=>"Shoot it with a laser", "title"=>"Throw a grenade", "content"=>"The monster explodes, the whole room is now messy, wyd?"},
  {"parent_chapter"=>"Shoot it with a laser", "title"=>"Run", "content"=>"The monster runs after you. Go right or left?"},
  {"parent_chapter"=>"Run", "title"=>"Right", "content"=>"The monster got stuck and you got away. The end"}]

stories = [{"title"=>"Starship", "author"=>"Mariza & Alfred", "intro"=>"Once upon a time, in a far away galaxy. There was a young team on the Discovery Starship"}]

stories.each do |hash|
  Story.create(hash)
end

chapters.each do |hash|
  parent = Chapter.find_by(title: hash["parent_chapter"])
  story = Story.find_by(title: "Starship")
  Chapter.create(hash.merge!(story: story, parent_chapter: parent).except!("parent_chapter"))
end
