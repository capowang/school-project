# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# seed the database, goal, schools,teachers, articles.
require "open-uri"

# first do the articles, at least 10 articles, all be the same
Teacher.destroy_all if Rails.env.development?
Article.destroy_all if Rails.env.development?
School.destroy_all if Rails.env.development?
About.destroy_all if Rails.env.development?
User.destroy_all if Rails.env.development?




article_photo_list = ["https://specials-images.forbesimg.com/imageserve/1214288769/960x0.jpg", "https://specials-images.forbesimg.com/imageserve/5f17cf50107158000722ca31/960x0.jpg",
"https://image.stern.de/9235592/t/d7/v3/w1440/r1.7778/-/harvard-universitaet.jpg", "https://poetsandquants.com/wp-content/uploads/sites/5/2019/05/HBS.png"]

for i in (1..10) do
	Article.create!(title_cn: "美国会通过法案，在美上市中企面临更多审查", title: "Chinese Companies to Face More Scrutiny as Bill Clears House
", 
subtitle: "OLIVER CONTRERAS FOR THE NEW YORK TIMES", subtitle_cn: "纽约时报奥利弗", 
content: "WASHINGTON — The House of Representatives passed legislation on Wednesday that would increase oversight of Chinese companies listed on American stock markets, the latest attempt by the United States to scrutinize financial ties with China.

The bill, the Holding Foreign Companies Accountable Act, would require the companies to disclose more information about any ties to foreign governments and the Chinese Communist Party, and would remove them from the U.S. exchanges after three years if they did not provide U.S. regulators access to their audit information.
The Senate passed a companion bill in May, and President Trump is expected to sign it into law.

Politicians from both parties have criticized the lack of transparency in the Chinese financial system, saying it could be putting American investors at risk of fraud. Chinese law restricts auditors from transferring certain company financial information out of the country, limiting its visibility to U.S. regulators.

Many major Chinese companies do not comply with American regulatory standards, including Baidu, China Mobile, PetroChina and the Semiconductor Manufacturing International Corporation, according to the Public Company Accounting Oversight Board, the U.S. auditing regulator. Under the new legislation, they could eventually be pushed off American stock exchanges if China does not change its financial practices.", 
content_cn: "华盛顿——周三，众议院通过一项法案，将加强对在美上市的中国公司的监管，这是美国审查对华经济关系的最新尝试。

这项名为《外国公司问责法案》(Holding Foreign Companies Accountable Act)的法案要求各公司就与外国政府及中国共产党的任何关联提供更多信息，并且，如果这些公司没有让美国监管方获取其审计信息，会被美国证交所摘牌。

参议院在5月通过了一项类似法案，特朗普总统预计将签署使其成为法律。

两党的政治人士均对中国金融系统缺乏透明性提出批评，表示这可能将美国投资者置于欺诈的危险境地。中国法律对审计人员将某些特定公司金融信息转移出国设限，导致美国监管方能看到的信息有限。

许多大型中国公司并不遵守美国监管标准，据美国审计监管机构美国上市公司会计监管委员会(Public Company Accounting Oversight Board)数据显示，这些公司包括百度、中国移动、中国石油及中芯国际，如果中国不改变其金融做法，这些公司将被美国股市驱逐。")
end

Article.first.photo1.attach(io: URI.open(article_photo_list[0]), 
filename: "article_photo1.png", content_type: 'image/png')

Article.first.photo2.attach(io: URI.open(article_photo_list[1]), 
filename: "article_photo2.png", content_type: 'image/png')

Article.first.photo3.attach(io: URI.open(article_photo_list[2]), 
filename: "article_photo3.png", content_type: 'image/png')

Article.first.photo4.attach(io: URI.open(article_photo_list[3]), 
filename: "article_photo4.png", content_type: 'image/png')

About.create!(title: "Open English Studio", 
title_cn: "开放英语学校",
description_cn: "开放英语学校是最棒的英语学校！！",
description: "Improve your English and live life to the full
Being confident with your English can enhance your life in so many ways. It can improve your social life and career prospects, and can help you to explore the world more freely.
As the world’s English experts we’re uniquely positioned to help you speak, listen, read and write with confidence so you can get the most out of your work and social life.
We offer a wide range of flexible courses, so whether you’re an absolute beginner or want to develop your English skills and become an expert speaker, we’ve got the right course for you.
")

photo_about = ["https://www.brandeis.edu/gsas/admissions/images/campus-spring.jpg", 
	"https://www.insidehighered.com/sites/default/server_files/media/Brandeis%20University.jpg",
	"https://static.timesofisrael.com/www/uploads/2020/08/Carl_J_Shapiro_Science_Center_Brandeis_University_Waltham_MA-1024x640.jpg",
	"https://www.brandeis.edu/about/visiting/images/visiting-boston-aerial.jpg"]

About.first.photo1.attach(io: URI.open(photo_about[0]), 
filename: "about_photo1.png", content_type: 'image/png')

About.first.photo2.attach(io: URI.open(photo_about[1]), 
filename: "about_photo2.png", content_type: 'image/png')

About.first.photo3.attach(io: URI.open(photo_about[2]), 
filename: "about_photo3.png", content_type: 'image/png')

About.first.photo4.attach(io: URI.open(photo_about[3]), 
filename: "about_photo4.png", content_type: 'image/png')



location = ["上海市浦东新区杨高中路天物空间B栋303", "上海市浦东新区黄杨路6号中国六三楼", "上海市浦东新区秀沿路1670弄1号锦科文化产业园A座3A02室", "上海市青浦区朱家角路396号"]
school_photo_list = ["https://specials-images.forbesimg.com/imageserve/1214288769/960x0.jpg", "https://specials-images.forbesimg.com/imageserve/5f17cf50107158000722ca31/960x0.jpg",
"https://image.stern.de/9235592/t/d7/v3/w1440/r1.7778/-/harvard-universitaet.jpg", "https://poetsandquants.com/wp-content/uploads/sites/5/2019/05/HBS.png"]

school_photo_count = 0
for i in (1..4) do
	school = School.create!(title: "School#{i}",
		title_cn: "学校#{i}",
		address: "location#{i}",
		address_cn: location[i - 1],
		content_cn: "布兰迪斯大学（Brandeis University），是一所位于美国马萨诸塞州波士顿地区沃尔瑟姆镇的私立顶尖研究型大学，成立于1948年，建校至今70余年已享有极高声誉，被誉为“全美最年轻的主要研究院大学”。
		布兰迪斯大学崇尚小班授课，以培育精英为理念，本科和研究生总人数仅在5600人左右",
		content: "Brandeis University /ˈbrændaɪs/ is a private research university located in the Boston suburb of Waltham, Massachusetts. Founded in 1948 as a non-sectarian, 
		coeducational institution sponsored by the Jewish community, Brandeis was 
		established on the site of the former Middlesex University. The university is named after Louis Brandeis, the first Jewish Justice of the U.S. Supreme Court.
In 2018, it had a total enrollment of 5,800 students on its suburban campus spanning 235 acres (95 hectares).[4] The institution offers more than 43 majors and 46 minors, and two-thirds 
of undergraduate classes have 20 students or fewer."
	)
end
School.first.photo1.attach(io: URI.open(school_photo_list[0]), 
filename: "school_photo1.png", content_type: 'image/png')

School.first.photo2.attach(io: URI.open(school_photo_list[1]), 
filename: "school_photo2.png", content_type: 'image/png')

School.first.photo3.attach(io: URI.open(school_photo_list[2]), 
filename: "school_photo1.png", content_type: 'image/png')

School.first.photo4.attach(io: URI.open(school_photo_list[3]), 
filename: "school_photo2.png", content_type: 'image/png')




teacher_photo_count = 0

name = ["Cindy", "Bob", "Box", "Capo", "Apple", "Vincent", "Cinty", "Conty", "Arian", "Aroa"]
description = ["Cindy is the best", "Bob is the best", "Box is the best", 
	"Capo is the best", "Apple is the best", "Vincent is the best", 
	"Cinty is the best", "Conty is the best", "Arian is the best", "Aroa is the best"]
name_cn = ["辛地", "保伦", "鲍克斯", "卡铂", "艾剖", "文森特", "辛提", "孔蒂", "阿瑞安", "阿弱安"]
description_cn = [
"辛地是个好老师", "保伦是个好老师", "鲍克斯是个好老师", 
"卡铂是个好老师", "艾剖是个好老师", "文森特是个好老师", 
"辛提是个好老师", "孔蒂是个好老师", "阿瑞安是个好老师", 
"阿弱安是个好老师"]
for i in (1..8) do
	teacher_photo = URI.open("https://www.brandeis.edu/sociology/images/faculty/headshots/rosenberger-chandler.jpg")
	teacher = Teacher.create!(name: name[i - 1], description: description[i - 1], 
	name_cn: name_cn[i - 1], school: School.first, description_cn: description_cn[i - 1])
	teacher_photo_count += 1
	teacher.photo.attach(io: teacher_photo, filename: "teacher_photo#{teacher_photo_count}.png", content_type: 'image/png')
end



User.create!(password: "123456789", email: "vincent@gmail.com", admin: true)




