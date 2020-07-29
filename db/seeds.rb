20.times do |i|
  Post.create({title: "Post #{i + 1}", body: 'test body', user_id: i > 10 ? 6 : 7})
end
