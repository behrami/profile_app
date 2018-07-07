# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.delete_all
Resume.delete_all
Experience.delete_all
Project.delete_all
Education.delete_all
Skill.delete_all
Blog.delete_all

puts 'Deleted previous seeds'

User.create([
            { first_name:'Behram',
              last_name:'Irani',
              picture:'https://media.licdn.com/dms/image/C4D03AQFA_GQnn7Yw-w/profile-displayphoto-shrink_200_200/0?e=1536192000&v=beta&t=_nE3ICtVVWyVoQc3-76v3gNwcxFViuQ3BvP4FT_ElQg',
              title:'Freelance Web Developer',
              summary:'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris sagittis tellus ut risus eleifend ultricies. Aliquam bibendum quis nunc et pharetra. Phasellus felis libero, viverra ac purus et, faucibus blandit dolor. Praesent quis felis ligula. Praesent ornare pellentesque facilisis. Nam pellentesque commodo rutrum. Etiam erat turpis, feugiat imperdiet dignissim non, rutrum ac sapien. Sed pulvinar gravida urna et efficitur. Aenean at mi odio. Phasellus vel varius diam. Mauris fermentum porttitor lacus, sed porta tortor tincidunt nec. Praesent luctus porttitor metus, nec faucibus libero bibendum et.',
              phone:'647-784-8982',
              address:'Mississauga, Ontario',
              email:'behram1993@gmail.com',
              linkedin:'https://www.linkedin.com/in/behram-i-936b823b/',
              github:'https://github.com/behrami?tab=stars',
              password:'password'
            }
            ])

puts 'Users created'

Resume.create([
              {user_id:User.find_by(first_name: 'Behram').id}
              ])

puts 'Resumes Created'

Experience.create([
                  {
                    resume_id:User.find_by(first_name: 'Behram').resume.id,
                    name:'Geek Squad',
                    summary: 'Geek Squad Summary.'
                  }
                  ])

puts 'Experiences created'

Project.create([
                {
                  resume_id:User.find_by(first_name: 'Behram').resume.id,
                  name:'Travel App',
                  summary: 'App that helps you decide where to travel to based on month selection. Also helps you books hotels based on the place you are going to.'
                },
                {
                  resume_id:User.find_by(first_name: 'Behram').resume.id,
                  name:'Freelance Booking App',
                  summary: 'Platform that helps you view and book freelancers from multiple professions based on location selection.'
                },
                {
                  resume_id:User.find_by(first_name: 'Behram').resume.id,
                  name:'Photgur App',
                  summary: 'This app is a simple version of imgur where users can sign in and paste a link to a picture which will show up on home page. User can also edit pictures if they are the owners.'
                },
                {
                  resume_id:User.find_by(first_name: 'Behram').resume.id,
                  name:'Profile App',
                  summary: 'A platform that helps people create thier professional profile online.'
                }
                ])

puts 'Projects created'

Education.create([
                  {
                    resume_id:User.find_by(first_name: 'Behram').resume.id,
                    name:'Full-Stack Web Developement Immersive',
                    school_name:'Bitmaker'
                  },
                  {
                    resume_id:User.find_by(first_name: 'Behram').resume.id,
                    name:'Software Engineering and Game Design',
                    school_name:'McMaster University'
                  }
                ])

puts 'Educations created'

Skill.create([
              {
                resume_id:User.find_by(first_name: 'Behram').resume.id,
                name:'HTML'
              },
              {
                resume_id:User.find_by(first_name: 'Behram').resume.id,
                name:'CSS'
              },
              {
                resume_id:User.find_by(first_name: 'Behram').resume.id,
                name:'SASS'
              },
              {
                resume_id:User.find_by(first_name: 'Behram').resume.id,
                name:'Ruby'
              },
              {
                resume_id:User.find_by(first_name: 'Behram').resume.id,
                name:'Rails'
              },
              {
                resume_id:User.find_by(first_name: 'Behram').resume.id,
                name:'Postgresql'
              },
              {
                resume_id:User.find_by(first_name: 'Behram').resume.id,
                name:'Javascript'
              },
              {
                resume_id:User.find_by(first_name: 'Behram').resume.id,
                name:'AJAX'
              },
              {
                resume_id:User.find_by(first_name: 'Behram').resume.id,
                name:'Git'
              },
              {
                resume_id:User.find_by(first_name: 'Behram').resume.id,
                name:'Github'
              },
              {
                resume_id:User.find_by(first_name: 'Behram').resume.id,
                name:'Bootstrap'
              },
            ])

puts 'Skills created'

Blog.create([
              {
                user_id:User.find_by(first_name: 'Behram').id,
                title:'My first blog',
                summary:'Testing out my blog'
              }
            ])
