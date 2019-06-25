3.times do |topic|
    Topic.create!(
        title: "Topic #{topic}",
    )
end

puts '3 topics created'

10.times do |blog|
    Blog.create!(
        title: "My Blog Post #{blog}",
        body: 'Ut pharetra non arcu vestibulum scelerisque. Donec fringilla libero eget placerat tristique. Nulla posuere leo ex, a molestie leo cursus nec. Duis vitae eros et velit dapibus euismod a et odio. Vivamus varius lorem vel viverra bibendum. Donec tincidunt fringilla mauris, et venenatis sem commodo in. Cras cursus efficitur nisi eu luctus. Duis dapibus lacus in neque aliquam pharetra. Nulla consequat leo id purus hendrerit, eget dictum lacus eleifend.',
        topic_id: Topic.last.id
        )
end

puts '10 blogs created'

5.times do |skill|
    Skill.create!(
        title: "Rails #{skill}",
        percent: 20
    )
end

puts '5 skills created'


8.times do |portfolio_item|
    Portfolio.create!(
        title: "Portfolio title: #{portfolio_item}",
        subtitle: 'Ruby on Rails',
        body: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean tempor imperdiet lobortis. Nulla ac felis justo. Etiam ac sapien turpis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nulla eleifend lectus mauris, a pretium tortor lobortis eget. Fusce fringilla malesuada tristique.',
        main_image: 'https://via.placeholder.com/600x400',
        thumb_image: 'https://via.placeholder.com/300x150' 
    )
end

1.times do |portfolio_item|
    Portfolio.create!(
        title: "Portfolio title: #{portfolio_item}",
        subtitle: 'Angular',
        body: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean tempor imperdiet lobortis. Nulla ac felis justo. Etiam ac sapien turpis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nulla eleifend lectus mauris, a pretium tortor lobortis eget. Fusce fringilla malesuada tristique.',
        main_image: 'https://via.placeholder.com/600x400',
        thumb_image: 'https://via.placeholder.com/300x150' 
    )
end

puts '9 portfolios created'

3.times do |technology|
    Portfolio.last.technologies.create!(
       name: "Technology #{technology}"
    )
end

puts '3 technologies created'
