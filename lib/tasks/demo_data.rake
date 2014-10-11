task demo_data: :environment do 
  Champion.find_or_create_by(name: 'Bob1')
  Champion.find_or_create_by(name: 'Bob2')
  Champion.find_or_create_by(name: 'Bob3')
  Champion.find_or_create_by(name: 'Bob4')
  Champion.find_or_create_by(name: 'Bob5')
  Champion.find_or_create_by(name: 'Bob6')
  Champion.find_or_create_by(name: 'Bob7')
  Champion.find_or_create_by(name: 'Bob8')
  Champion.find_or_create_by(name: 'Bob9')
  Champion.find_or_create_by(name: 'Bob10')
  Champion.find_or_create_by(name: 'Bob11')
  
  puts "Succesful"
end