require "pry"
def begins_with_r(array)
  answer = true
  array.each do |each_element|
    if each_element[0] != "r"
      answer = false
end
end
answer
end

def contain_a(array)
  newArray = []
  array.each do |each_element|
    for x in 0...each_element.length
    if each_element[x] == "a"
      newArray.push(each_element)
    end
  end
end
newArray
end

def first_wa (array)
  array.each do |each_element|
    for x in 0...each_element.length
    if (each_element[x] == "w") && (each_element[x+1] == "a")
      return each_element
    end
  end
end
end

def remove_non_strings(array)
  newAr = []
  array.each do |each_element|
    if each_element.class != String
      nil 
    else 
      newAr.push(each_element)
    end
  end
  newAr
end

def count_elements(array)
  newAr = []
  testAr = []
  index = 0
  array.each do |each_element|
    counter = array.count(each_element)
  
    if testAr.include?(each_element)
       nil
      
    else

      newAr.push(each_element)
      newAr[index][:count] = counter
     
      testAr.push(array[index])
       index += 1
    end
  end
  newAr
end

def merge_data(keys, data)
  names_array = []
  answer = []
  keys.each do |each_element_hash|
      each_element_hash.each do |first_name, nameValue|
        names_array.push(nameValue)
      end
end
      names_array.each do |name|
        data.each do |each_data_hash|
          each_data_hash.each do |key, value|
            if key == name
            answer.push(value)
          end
            
          end
        end
      end
      x = 0
      answer.each do |finalElement|
        finalElement.merge!(keys[x])
        x+=1
      end
      answer
    
end

keys = [{:first_name=>"blake"}, {:first_name=>"ashley"}]
data = [{"ashley"=>{:awesomeness=>9, :height=>60, :last_name=>"dubs"}, "blake"=>{:awesomeness=>10, :height=>"74", :last_name=>"johnson"}}]
expected = [{:awesomeness=>10, :first_name=>"blake", :height=>"74", :last_name=>"johnson"}, {:awesomeness=>9, :first_name=>"ashley", :height=>60, :last_name=>"dubs"}]



def find_cool (array)
  answer = []
  array.each do |each_element|
    each_element.each do |key, value|
      if value == "cool"
        answer.push(each_element)
      else nil
    end
  end
end
answer
end

array = [{:name=>"ashley", :temperature=>"sort of cool"}, {:name=>"blake", :temperature=>"cool"}]



def organize_schools(hash)
  answer_hash = {}
 
 hash.each do |bootName, location_hash|
   location_hash.each do |locTag, city|
   if answer_hash[city] == nil
     answer_hash[city] = [bootName]
   else 
     answer_hash[city] << bootName
   end
 end
 end
 answer_hash
 
end



hash = {"Hack Reactor"=>{:location=>"SF"}, "dev boot camp"=>{:location=>"SF"}, "dev boot camp chicago"=>{:lo...:location=>"NYC"}, "flatiron school bk"=>{:location=>"NYC"}, "general assembly"=>{:location=>"NYC"}}

expect = {"Chicago"=>["dev boot camp chicago"], "NYC"=>["flatiron school bk", "flatiron school", "general assembly"], "SF"=>["dev boot camp", "Hack Reactor"]}

