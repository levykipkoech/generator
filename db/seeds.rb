puts "seeding"
# Create users
users = [
  { name: 'John Doe', email: 'john@example.com', password: 'password' },
  { name: 'Jane Smith', email: 'jane@example.com', password: 'password' },
  { name: 'Bob Johnson', email: 'bob@example.com', password: 'password' }
]

# users.each do |user|
#   User.create(user)
# end

# Create memes
memes = [
  {
    title: 'Funny Meme',
    description: 'This is a really funny meme.',
    url: 'https://example.com/meme1.jpg',
    user_id: 1
  },
  {
    title: 'Cute Meme',
    description: 'This is a really cute meme.',
    url: 'https://example.com/meme2.jpg',
    user_id: 2
  },
  {
    title: 'Silly Meme',
    description: 'This is a really silly meme.',
    url: 'https://example.com/meme3.jpg',
    user_id: 1
  },
  {
    title: 'Weird Meme',
    description: 'This is a really weird meme.',
    url: 'https://example.com/meme4.jpg',
    user_id: 3
  }
]

# memes.each do |meme|
#   Meme.create(meme)
# end
puts "done seeding"
