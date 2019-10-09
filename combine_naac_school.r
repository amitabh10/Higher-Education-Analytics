naac <- read.csv("/home/amitabh/Desktop/amitds/naac1.csv",stringsAsFactors=FALSE)
collge_acc <- read.csv("/home/amitabh/Desktop/amitds/AISHE/2011_12_college_institution_accreditation.csv",stringsAsFactors=FALSE)
college_ins <- read.csv("/home/amitabh/Desktop/amitds/AISHE/2011_12_college_institution.csv",stringsAsFactors=FALSE)
infrastructure <- read.csv("/home/amitabh/Desktop/amitds/AISHE/2011_12_infrastructure.csv",stringsAsFactors=FALSE)
naac_id <- naac$id
sink("/home/amitabh/Desktop/amitds/final_col_acc_data1.csv")
cat("college id,name,autonomous,constructed_area,evening,girl_exclusive,is_foreign_students_enrolled,no_of_student_hostel,offers_loan,offers_scholarship,staff_quarter_available,student_hostel_available,year_of_establishment,auditorium,cafeteria,common_room,computer_center,conference_hall,connectivity_nkn,connectivity_nmeict,guest_house,gymnasium_fitness_center,health_center,indoor_stadium,laboratory,library,no_of_auditoriums,no_of_cafeteria,no_of_common_rooms,no_of_computer_centers,no_of_conference_halls,no_of_guest_houses,no_of_gymnasim_fitness_centers,no_of_health_centers,no_of_indoor_stadiums,no_of_laboratories,no_of_libraries,no_of_playgrounds,no_of_separate_rooms_for_girls,no_of_theatres,playground,separate_room_for_girls,solar_power_generation,theatre,score\n")
for(x in naac_id)
{
	n<-naac[naac$id == x,]
#	print(x)
	c_a <- collge_acc[collge_acc$accreditation_id == x,]
	coll_details <- college_ins[college_ins$id == c_a$college_institution_id,]
	inf <- infrastructure[infrastructure$id == coll_details$infrastructure_id,]
#	print(n$score)
cat(coll_details$id,",",coll_details$name,",",coll_details$autonomous,",",coll_details$constructed_area,",",coll_details$evening,",",coll_details$girl_exclusive,",",coll_details$is_foreign_students_enrolled,",",coll_details$no_of_student_hostel,",",coll_details$offers_loan,",",coll_details$offers_scholarship,",",coll_details$staff_quarter_available,",",coll_details$student_hostel_available,",",coll_details$year_of_establishment,",",inf$auditorium,",",inf$cafeteria,",",inf$common_room,",",inf$computer_center,",",inf$conference_hall,",",inf$connectivity_nkn,",",inf$connectivity_nmeict,",",inf$guest_house,",",inf$gymnasium_fitness_center,",",inf$health_center,",",inf$indoor_stadium,",",inf$laboratory,",",inf$library,",",inf$no_of_auditoriums,",",inf$no_of_cafeteria,",",inf$no_of_common_rooms,",",inf$no_of_computer_centers,",",inf$no_of_conference_halls,",",inf$no_of_guest_houses,",",inf$no_of_gymnasim_fitness_centers,",",inf$no_of_health_centers,",",inf$no_of_indoor_stadiums,",",inf$no_of_laboratories,",",inf$no_of_libraries,",",inf$no_of_playgrounds,",",inf$no_of_separate_rooms_for_girls,",",inf$no_of_theatres,",",inf$playground,",",inf$separate_room_for_girls,",",inf$solar_power_generation,",",inf$theatre,",",n$score,"\n")

}
sink()
#cat()
