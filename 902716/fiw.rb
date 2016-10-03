words = { 0 => "Zero",1 => "One",2 => "Two", 3 =>"Three", 4 => "Four", 5 => "Five", 6 => "Six", 7 => "Seven", 8 => "Eight", 9 =>"Nine", 10 => "Ten",
	11 => "Eleven", 12 => "Twelve", 13 => "Thirteen", 14 => "Fourteen", 15 => "Fiveteen", 16 => "Sixteen", 17 => "Seventeen",18 => "Eighteen",19 => "Nineteen",20 => "Twenty",
	21 => "Twenty One", 22 => "Twenty Two", 23 => "Twenty Three", 24 => "Twenty Four", 25 => "Twenty Five", 26 => "Twenty Six", 27 => "Twenty Seven",28 => "Twenty Eight", 29 => "Twenty Nine", 
	30 => "Thirty",31 => "Thirty One",32 => "Thirty Two",33 => "Thirty Three",34 => "Thirty Four",35 => "Thirty Five", 36 => "Thirty Six",37 => "Thirty Seven",38 => "Thirty Eight", 39 => "Thirty Nine",
	40 => "Fourty", 41 => "Fourty One", 42 => "Fourty Two",43 => "Fourty Three",44 => "Fourty Four",45 => "Fourty Five",46 => "Fourty Six",47 => "Fourty Seven",48 => "Fourty Eight",49 => "Fourty Nine",
	50 => "Fifty", 51 => "Fifty One", 52 => "Fifty Two",53 => "Fifty Three",54 => "Fifty Four",55 => "Fifty Five",56 => "Fifty Six",57 => "Fifty Seven",58 => "Fifty Eight",59 => "Fifty Nine", 
	60 => "Sixty", 61 => "Sixty One", 62 => "Sixty Two",63 => "Sixty Three",64 => "Sixty Four",65 => "Sixty Five",66 => "Sixty Six",67 => "Sixty Seven",68 => "Sixty Eight",69 => "Sixty Nine", 
	70 => "Seventy", 71 => "Seventy One", 72 => "Seventy Two",73 => "Seventy Three",74 => "Seventy Four",75 => "Seventy Five",76 => "Seventy Six",77 => "Seventy Seven",78 => "Seventy Eight",79 => "Seventy Nine", 
	80 => "Eighty",  81 => "Eighty One", 82 => "Eighty Two",83 => "Eighty Three",84 => "Eighty Four",85 => "Eighty Five",86 => "Eighty Six",87 => "Eighty Seven",88 => "Eighty Eight",89 => "Eighty Nine",
	90 => "Ninety",  91 => "Ninety One", 92 => "Ninety Two",93 => "Ninety Three",94 => "Ninety Four",95 => "Ninety Five",96 => "Ninety Six",97 => "Ninety Seven",98 => "Ninety Eight",99 => "Ninety Nine",
	 "&" => "and",100 => "Hundred", 1000 => "Thousand", 1000000 => "Million", 1000000000 => "Trillion", "-" => "Negative"}

puts "Please Enter The Digits: "
number = []
first_input = gets.chomp.split("")

if first_input[0] == "-"
  negative_number = first_input[1..-1].map(&:to_i)
   first_two = negative_number.first(2).join.to_i
last_two = negative_number.last(2).join.to_i
t_next = [negative_number[1],negative_number[2]].join.to_i
t_1_m_next = [negative_number[2],negative_number[3]].join.to_i
t_2_m_next = [negative_number[3],negative_number[4]].join.to_i
t_3_next = [negative_number[4],negative_number[5]].join.to_i
t_4_next = [negative_number[5],negative_number[6]].join.to_i
convertor = []
if negative_number.length == 1
		convertor.push([words["-"],words[negative_number[0]]].join(" "))	
	elsif negative_number.length == 2
		convertor.push([words["-"],words[first_two]].join(" "))
	elsif negative_number.length == 3	
		 convertor.push([words["-"],words[negative_number[0]],words[100],words["&"],words[last_two]].join(" "))
	elsif negative_number.length == 4	
		convertor.push ([words["-"],words[negative_number[0]],words[1000],words[negative_number[1]],words[100], words["&"],words[last_two]].join(" "))
	elsif negative_number.length == 5	
				convertor.push([words["-"],words[first_two],words[1000],words[negative_number[2]],words[100], words["&"],words[last_two]].join(" "))				
	elsif negative_number.length == 6
	      convertor.push([words["-"],words[negative_number[0]],words[100],words["&"],words[t_next],words[1000],words[negative_number[3]],words[100],words["&"],words[last_two]].join(" "))	
	elsif negative_number.length == 7
		convertor.push ([words["-"],words[negative_number[0]],words[1000000],words[negative_number[1]],words[100],words["&"],words[t_1_m_next],words[1000],words[negative_number[4]],words[100],words["&"],words[last_two]].join(" "))
	elsif negative_number.length == 8
		 convertor.push([words["-"],words[first_two],words[1000000],words[negative_number[2]],words[100],words["&"],words[t_2_m_next],words[1000],words[negative_number[5]],words[100],words["&"],words[last_two]].join(" ")) 
	elsif negative_number.length == 9
		convertor.push([words["-"],words[negative_number[0]],words[100],words["&"],words[t_next],words[1000000],words[negative_number[3]],words[100],words["&"],words[t_3_next],words[1000],words[negative_number[6]],words[100],words["&"],words[last_two]].join(" "))	 	      		 	      
	elsif negative_number.length == 10
		convertor.push([words["-"],words[negative_number[0]],words[1000000000],words[negative_number[1]],words[100],words["&"],words[t_1_m_next],words[1000000],words[negative_number[4]],words[100],words["&"],words[t_4_next],words[1000],words[negative_number[7]],words[100],words["&"],words[last_two]].join(" "))
end		
puts convertor 
end

if first_input[0] != "-"
   number = first_input.map(&:to_i)
   first_two = number.first(2).join.to_i
last_two = number.last(2).join.to_i
t_next = [number[1],number[2]].join.to_i
t_1_m_next = [number[2],number[3]].join.to_i
t_2_m_next = [number[3],number[4]].join.to_i
t_3_next = [number[4],number[5]].join.to_i
t_4_next = [number[5],number[6]].join.to_i
convertor = []
if number.length == 1
		convertor.push([words[number[0]]])	
	elsif number.length == 2
		convertor.push([words[first_two]])
	elsif number.length == 3	
		 convertor.push([words[number[0]],words[100],words["&"],words[last_two]].join(" "))
	elsif number.length == 4	
		convertor.push ([words[number[0]],words[1000],words[number[1]],words[100], words["&"],words[last_two]].join(" "))
	elsif number.length == 5	
				convertor.push([words[first_two],words[1000],words[number[2]],words[100], words["&"],words[last_two]].join(" "))				
	elsif number.length == 6
	      convertor.push([words[number[0]],words[100],words["&"],words[t_next],words[1000],words[number[3]],words[100],words["&"],words[last_two]].join(" "))	
	elsif number.length == 7
		convertor.push ([words[number[0]],words[1000000],words[number[1]],words[100],words["&"],words[t_1_m_next],words[1000],words[number[4]],words[100],words["&"],words[last_two]].join(" "))
	elsif number.length == 8
		 convertor.push([words[first_two],words[1000000],words[number[2]],words[100],words["&"],words[t_2_m_next],words[1000],words[number[5]],words[100],words["&"],words[last_two]].join(" ")) 
	elsif number.length == 9
		convertor.push([words[number[0]],words[100],words["&"],words[t_next],words[1000000],words[number[3]],words[100],words["&"],words[t_3_next],words[1000],words[number[6]],words[100],words["&"],words[last_two]].join(" "))	 	      		 	      
	elsif number.length == 10
		convertor.push([words[number[0]],words[1000000000],words[number[1]],words[100],words["&"],words[t_1_m_next],words[1000000],words[number[4]],words[100],words["&"],words[t_4_next],words[1000],words[number[7]],words[100],words["&"],words[last_two]].join(" "))
end		
puts convertor
end	
