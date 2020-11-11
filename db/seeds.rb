# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# seed the database, goal, schools,teachers, articles.

# first do the articles, at least 10 articles, all be the same
Teacher.destroy_all if Rails.env.development?
Article.destroy_all if Rails.env.development?
School.destroy_all if Rails.env.development?
About.destroy_all if Rails.env.development?
User.destroy_all if Rails.env.development?


for i in (1..10) do
	Article.create!(title: "Title #{i}It might be a long long title", 
		title_cn: "标题党#{i}",
		subtitle_cn: "第二标题#{i}",
		content_cn: "内容内容内容",
		subtitle: "Subtitle is also really really really interesting",
		content: "Michael Tidd, head teacher at East Preston Junior School in Sussex, said his allocation of laptops has been cut from 17 to three.
Speaking to BBC Radio 4's Today programme, Mr Tidd said schools had been putting plans in place to meet the new remote learning legal duty.
‘And then the day after all those plans had to be finalised, then we get told that the number of laptops we were expecting... it's been reduced massively.’
Another school told the BBC it was informed it would receive 66 laptops instead of the 332 originally promised.
The school leaders union NAHT said the timing of the changes to laptop allocation numbers ‘beggars belief’.
Nick Brook, NAHT deputy general secretary, said: ‘The government has been quick to mandate what it expects schools to be able to do when it comes to remote learning, but is clearly unable to deliver the necessary tools that schools and their pupils need.’
The DfE calculates the number of devices available to schools based on the number of children in years 3 to 11, free school meals data and how many devices a school already has.
It said more than 340,000 laptops and tablets were being made available to schools this term to support disadvantaged children, with deliveries expected to total half a million by Christmas.
A DfE spokesperson said: ‘As we move into half term, and in the context of significant global demand, we're updating our allocation process to more accurately align orders with the number of 
students schools typically have self-isolating, ensuring as many children as possible benefit from receiving a device this term.We have already purchased an additional 96,000 devices and continue to work closely with our suppliers to ensure delivery despite the increased global demand.’",
		photo: "https://www.pittstate.edu/education/_files/images/spedhl-1280x850.jpg"
		)
end



# then you should begin to build more schools and the teachers

for i in (1..10) do
	School.create!(title: "School#{i}",
		address: "Huanan Beilu Gogokid",
		content: "Brandeis University /ˈbrændaɪs/ is a private research university located in the Boston suburb of Waltham, Massachusetts. Founded in 1948 as a non-sectarian, 
		coeducational institution sponsored by the Jewish community, Brandeis was 
		established on the site of the former Middlesex University. The university is named after Louis Brandeis, the first Jewish Justice of the U.S. Supreme Court.
In 2018, it had a total enrollment of 5,800 students on its suburban campus spanning 235 acres (95 hectares).[4] The institution offers more than 43 majors and 46 minors, and two-thirds 
of undergraduate classes have 20 students or fewer.",
		photo: "http://image.liuxue360.com/2016/03/26/20160326153257969.jpg"
		)	
end



for i in (1..10) do 
	Teacher.create!(photo: "https://n.sinaimg.cn/translate/799/w2000h1999/20181020/XOB4-hmrasqs8182270.jpg",
		name: "Teacher#{i}",
		description: "He is a great teacher",
		school_id: School.first.id
		)
end


About.create!(photo: ["https://www.brandeis.edu/gsas/admissions/images/campus-spring.jpg", 
	"https://www.insidehighered.com/sites/default/server_files/media/Brandeis%20University.jpg",
	"https://static.timesofisrael.com/www/uploads/2020/08/Carl_J_Shapiro_Science_Center_Brandeis_University_Waltham_MA-1024x640.jpg"
], title: "Open English Studio", description: "Improve your English and live life to the full
Being confident with your English can enhance your life in so many ways. It can improve your social life and career prospects, and can help you to explore the world more freely.
As the world’s English experts we’re uniquely positioned to help you speak, listen, read and write with confidence so you can get the most out of your work and social life.
We offer a wide range of flexible courses, so whether you’re an absolute beginner or want to develop your English skills and become an expert speaker, we’ve got the right course for you.
")
User.create!(password: "123456789", email: "vincent@gmail.com", admin: true)




