# *** DEPENDENT ***
User.destroy_all
Thought.destroy_all


options = [false,true]


5.times do

    User.create(name: Faker::JapaneseMedia::Naruto.character, 
    username:Faker::JapaneseMedia::DragonBall.planet)

end


25.times do

    Thought.create(
        subject: Faker::Book.unique.title,
        details: "",
        sentiment: "",
        
        intrusive: options.sample,
        logical: options.sample,
        user: User.all.sample
    )

end




puts "
🙌🙌🙌🙌🙌🙌🙌🙌
✅ ALL DZUUUN!!!!
🙌🙌🙌🙌🙌🙌🙌🙌

"