class Seed
  def self.seed
    users
    musts
    reviews
  end

  def self.users
    users = [
      {username: 'mira', password: 'mira123'},
      {username: 'carl', password: 'carl'}
    ]

    users.each {|user| User.create(user)}
  end

  def self.musts
    musts = [
      {name: 'Special', brand: 'Mustmeister', manufacturer: 'Must Industries', package: 'Bottle', year: 1999, location: 'Unknown, Unknown'},
      {name: 'Mustigast', brand: 'Musten', manufacturer: 'Microsoft Industries', package: 'Glass', year: 1993, location: 'Rom, Frankrike'},
      {name: 'Stora', brand: 'Mustmeister', manufacturer: 'Husman Industries', package: 'Bottle', year: 1992, location: 'Dubai, Japan'},
      {name: 'Secret', brand: 'Test Private', manufacturer: 'Fågel Industries', package: 'Glass', year: 1991, location: 'London, United Kingdom'},
      {name: 'Extra', brand: 'Failsafe', manufacturer: 'Okända Industries', package: 'Bottle', year: 1990, location: 'Stockholm, Finland'}
    ]

    musts.each {|must| Must.create(must)}
  end

  def self.reviews 
    reviews = [
      {title: 'Best taste!', rating: 5, user_id: 1, must_id: 2, content: 'pretium a lacus. In malesuada ultricies tellus nec elementum. Morbi quis volutpat mi. Vestibulum sit amet purus leo. Etiam bibendum, leo non vehicula mollis, nibh massa eleifend ante, blandit aliquet justo metus et leo.'},
      {title: 'Ok taste', rating: 3, user_id: 2, must_id: 1, content: 'pretium a lacus. In malesuada ultricies tellus nec elementum. Morbi quis volutpat mi. Vestibulum sit amet purus leo. Etiam bibendum, leo non vehicula mollis, nibh massa eleifend ante, blandit aliquet justo metus et leo.'},
      {title: 'Refreshing', rating: 4, user_id: 1, must_id: 3, content: 'pretium a lacus. In malesuada ultricies tellus nec elementum. Morbi quis volutpat mi. Vestibulum sit amet purus leo. Etiam bibendum, leo non vehicula mollis, nibh massa eleifend ante, blandit aliquet justo metus et leo.'},
      {title: 'Worst taste!', rating: 1, user_id: 2, must_id: 4, content: 'pretium a lacus. In malesuada ultricies tellus nec elementum. Morbi quis volutpat mi. Vestibulum sit amet purus leo. Etiam bibendum, leo non vehicula mollis, nibh massa eleifend ante, blandit aliquet justo metus et leo.'},
      {title: "can't get enough of this!", rating: 5, user_id: 1, must_id: 5, content: 'pretium a lacus. In malesuada ultricies tellus nec elementum. Morbi quis volutpat mi. Vestibulum sit amet purus leo. Etiam bibendum, leo non vehicula mollis, nibh massa eleifend ante, blandit aliquet justo metus et leo.'},
      {title: 'Stunning!', rating: 4, user_id: 2, must_id: 2, content: 'pretium a lacus. In malesuada ultricies tellus nec elementum. Morbi quis volutpat mi. Vestibulum sit amet purus leo. Etiam bibendum, leo non vehicula mollis, nibh massa eleifend ante, blandit aliquet justo metus et leo.'},
      {title: 'Welcoming', rating: 5, user_id: 1, must_id: 1, content: 'pretium a lacus. In malesuada ultricies tellus nec elementum. Morbi quis volutpat mi. Vestibulum sit amet purus leo. Etiam bibendum, leo non vehicula mollis, nibh massa eleifend ante, blandit aliquet justo metus et leo.'}
    ]

    reviews.each {|review| Review.create(review)}
  end
end
