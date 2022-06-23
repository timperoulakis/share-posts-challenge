tim = User.create!(
  nickname: "tim",
  email: "tim@tim.tim",
  password: "secret"
)

post = Post.create!(
  url: "https://dev.to/molly/level-up-your-ruby-skillz-working-with-hashes-4bid",
  title: "Level Up Your Ruby Skillz: Working With Hashes ",
  content: "Last week I tackled Ruby arrays and shared some of the methods I find the most useful for working with them. This week I want to talk about HASHES! Before I dive head first into my favorite methods, I want to give a quick summary of what a hash is in Ruby and how it works. The definition of a Hash straight from the docs themselves:",
  user: tim
)
