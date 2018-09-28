namespace :db do
  namespace :test do
    desc 'Fill test data in db.'
    task fill: :environment do
      u1 = User.create name: 'Nik', email: 'nik@example.com'
      u2 = User.create name: 'Tim', email: 'tim@example.com'

      p1 = Post.create title: 'How to learn Ruby?', body: 'Practice, practice and practice.', user: u1
      p2 = Post.create title: 'To go or not to go to the ComixCon?', body: 'For starters, we need to earn more money.', user: u2

      c1 = Comment.create body: 'As said by Vladimir Ilyich.', user: u2, post: p1
      c2 = Comment.create body: 'And forget about peace and laziness.', user: u1, post: p2
    end
  end
end
