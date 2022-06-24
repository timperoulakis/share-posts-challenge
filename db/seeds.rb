puts "Destroying users..."
User.destroy_all
puts "Done!"

puts "Creating users..."
tim = User.create!(
  nickname: "tim",
  email: "tim@tim.tim",
  password: "secret"
)
frodo = User.create!(
  nickname: "Frodo",
  email: "fbaggins@hobbits.com",
  password: "secret"
)
puts "Done!"

puts "Creating posts..."

Post.create!(
  url: "https://dev.to/molly/level-up-your-ruby-skillz-working-with-hashes-4bid",
  title: "Level Up Your Ruby Skillz: Working With Hashes ",
  content: "Wanted t osend this to a friend and wondering if it's beginner-friendly enough, what do you think?",
  user: tim
)

Post.create!(
  url: "https://world.hey.com/dhh/employee-surveillance-software-is-managerial-bankruptcy-94e48a08",
  title: "Employee surveillance software is managerial bankruptcy",
  content: "Hot take but good take",
  user: tim
)

Post.create!(
  url: "https://sites.google.com/site/steveyegge2/anti-anti-hype",
  title: "anti-anti-hype",
  content: "Another great article by Steve. What do you think?",
  user: tim
)

puts "Done!"

puts "Creating comments..."
Post.all.sample(2).each do |post|
  Comment.create!(
    content: "Very good article, thanks for sharing",
    post: post,
    user: frodo
  )
end
puts "Done!"
