(define (problem floodsp09) (:domain Floods)
(:objects
	cdm1 cdm2 cdm3 cdm4 cdm5 cdm6 - cdm
	ugv1Store ugv2Store ugv3Store ugv4Store ugv5Store ugv6Store ugv7Store ugv8Store ugv9Store ugv10Store ugv11Store usv1Store usv2Store usv3Store usv4Store usv5Store usv6Store usv7Store usv8Store usv9Store usv10Store usv11Store - store
	area1 area2 area3 area4 area5 area6 area7 area8 area9 area10 area11 area12 area13 area14 area15 area16 area17 area18 area19 area20 area21 area22 area23 area24 area25 area26 area27 area28 area29 area30 area31 area32 area33 area34 area35 area36 area37 area38 area39 area40 area41 area42 area43 area44 area45 area46 area47 area48 area49 area50 area51 area52 area53 area54 area55 - area
	disaster1 disaster2 disaster3 disaster4 disaster5 disaster6 disaster7 disaster8 disaster9 disaster10 disaster11 disaster12 disaster13 - disaster
	box1 box2 box3 box4 box5 box6 box7 box8 box9 box10 - box
	uav1 uav2 uav3 uav4 uav5 uav6 uav7 uav8 uav9 uav10 uav11 - uav
	ugv1 ugv2 ugv3 ugv4 ugv5 ugv6 ugv7 ugv8 ugv9 ugv10 ugv11 - ugv
	usv1 usv2 usv3 usv4 usv5 usv6 usv7 usv8 usv9 usv10 usv11 - usv
	)
(:init
	(store_of ugv1Store ugv1)
	(store_of ugv2Store ugv2)
	(store_of ugv3Store ugv3)
	(store_of ugv4Store ugv4)
	(store_of ugv5Store ugv5)
	(store_of ugv6Store ugv6)
	(store_of ugv7Store ugv7)
	(store_of ugv8Store ugv8)
	(store_of ugv9Store ugv9)
	(store_of ugv10Store ugv10)
	(store_of ugv11Store ugv11)
	(store_of usv1Store usv1)
	(store_of usv2Store usv2)
	(store_of usv3Store usv3)
	(store_of usv4Store usv4)
	(store_of usv5Store usv5)
	(store_of usv6Store usv6)
	(store_of usv7Store usv7)
	(store_of usv8Store usv8)
	(store_of usv9Store usv9)
	(store_of usv10Store usv10)
	(store_of usv11Store usv11)
	(empty ugv1Store)
	(empty ugv2Store)
	(empty ugv3Store)
	(empty ugv4Store)
	(empty ugv5Store)
	(empty ugv6Store)
	(empty ugv7Store)
	(empty ugv8Store)
	(empty ugv9Store)
	(empty ugv10Store)
	(empty ugv11Store)
	(empty usv1Store)
	(empty usv2Store)
	(empty usv3Store)
	(empty usv4Store)
	(empty usv5Store)
	(empty usv6Store)
	(empty usv7Store)
	(empty usv8Store)
	(empty usv9Store)
	(empty usv10Store)
	(empty usv11Store)
	(cdm_at cdm1 area1)
	(cdm_at cdm2 area13)
	(cdm_at cdm3 area21)
	(cdm_at cdm4 area33)
	(cdm_at cdm5 area41)
	(cdm_at cdm6 area53)
	(at uav1 area1)
	(at uav2 area1)
	(at uav3 area13)
	(at uav4 area13)
	(at uav5 area21)
	(at uav6 area21)
	(at uav7 area33)
	(at uav8 area33)
	(at uav9 area41)
	(at uav10 area41)
	(at uav11 area53)
	(at usv1 area1)
	(at usv2 area1)
	(at usv3 area13)
	(at usv4 area13)
	(at usv5 area21)
	(at usv6 area21)
	(at usv7 area33)
	(at usv8 area33)
	(at usv9 area41)
	(at usv10 area41)
	(at usv11 area53)
	(at ugv1 area1)
	(at ugv2 area1)
	(at ugv3 area13)
	(at ugv4 area13)
	(at ugv5 area21)
	(at ugv6 area21)
	(at ugv7 area33)
	(at ugv8 area33)
	(at ugv9 area41)
	(at ugv10 area41)
	(at ugv11 area53)
	(box_at_cdm box1 cdm1)
	(box_at_cdm box2 cdm2)
	(box_at_cdm box3 cdm1)
	(box_at_cdm box4 cdm4)
	(box_at_cdm box5 cdm3)
	(box_at_cdm box6 cdm4)
	(box_at_cdm box7 cdm5)
	(box_at_cdm box8 cdm5)
	(box_at_cdm box9 cdm6)
	(box_at_cdm box10 cdm6)
	(water_path area1 area2)
	(water_path area2 area1)
	(water_path area2 area4)
	(water_path area4 area2)
	(water_path area2 area6)
	(water_path area6 area2)
	(water_path area4 area5)
	(water_path area5 area4)
	(water_path area4 area9)
	(water_path area9 area4)
	(water_path area9 area8)
	(water_path area8 area9)
	(water_path area8 area7)
	(water_path area7 area8)
	(water_path area6 area12)
	(water_path area12 area6)
	(water_path area12 area10)
	(water_path area10 area12)
	(water_path area9 area13)
	(water_path area13 area9)
	(water_path area1 area16)
	(water_path area16 area1)
	(water_path area2 area14)
	(water_path area14 area2)
	(water_path area14 area16)
	(water_path area16 area14)
	(water_path area16 area18)
	(water_path area18 area16)
	(water_path area18 area15)
	(water_path area15 area18)
	(water_path area18 area20)
	(water_path area20 area18)
	(water_path area20 area19)
	(water_path area19 area20)
	(water_path area19 area17)
	(water_path area17 area19)

	(water_path area21 area22)
	(water_path area22 area21)
	(water_path area22 area24)
	(water_path area24 area22)
	(water_path area22 area26)
	(water_path area26 area22)
	(water_path area24 area25)
	(water_path area25 area24)
	(water_path area24 area29)
	(water_path area29 area24)
	(water_path area29 area28)
	(water_path area28 area29)
	(water_path area28 area27)
	(water_path area27 area28)
	(water_path area26 area32)
	(water_path area32 area26)
	(water_path area32 area30)
	(water_path area30 area32)
	(water_path area29 area33)
	(water_path area33 area29)
	(water_path area21 area36)
	(water_path area36 area21)
	(water_path area22 area34)
	(water_path area34 area22)
	(water_path area34 area36)
	(water_path area36 area34)
	(water_path area36 area38)
	(water_path area38 area36)
	(water_path area38 area35)
	(water_path area35 area38)
	(water_path area38 area40)
	(water_path area40 area38)
	(water_path area40 area39)
	(water_path area39 area40)
	(water_path area39 area37)
	(water_path area37 area39)

	(water_path area27 area8)
	(water_path area8 area27)
	(water_path area38 area17)
	(water_path area17 area38)

	(water_path area41 area42)
	(water_path area42 area41)
	(water_path area42 area44)
	(water_path area44 area42)
	(water_path area42 area46)
	(water_path area46 area42)
	(water_path area44 area45)
	(water_path area45 area44)
	(water_path area44 area49)
	(water_path area49 area44)
	(water_path area49 area48)
	(water_path area48 area49)
	(water_path area48 area47)
	(water_path area47 area48)
	(water_path area46 area52)
	(water_path area52 area46)
	(water_path area52 area50)
	(water_path area50 area52)
	(water_path area49 area53)
	(water_path area53 area49)
	(water_path area42 area54)
	(water_path area54 area42)

	(water_path area33 area53)
	(water_path area53 area33)
	(water_path area13 area53)
	(water_path area53 area13)

	(ground_path area1 area3)
	(ground_path area3 area1)
	(ground_path area3 area4)
	(ground_path area4 area3)
	(ground_path area3 area5)
	(ground_path area5 area3)
	(ground_path area4 area6)
	(ground_path area6 area4)
	(ground_path area4 area10)
	(ground_path area10 area4)
	(ground_path area10 area7)
	(ground_path area7 area10)
	(ground_path area7 area8)
	(ground_path area8 area7)
	(ground_path area5 area11)
	(ground_path area11 area5)
	(ground_path area11 area9)
	(ground_path area9 area11)
	(ground_path area10 area13)
	(ground_path area13 area10)
	(ground_path area1 area16)
	(ground_path area16 area1)
	(ground_path area3 area15)
	(ground_path area15 area3)
	(ground_path area15 area16)
	(ground_path area16 area15)
	(ground_path area16 area17)
	(ground_path area17 area16)
	(ground_path area14 area17)
	(ground_path area17 area14)	
	(ground_path area18 area20)
	(ground_path area20 area18)
	(ground_path area20 area19)
	(ground_path area19 area20)
	(ground_path area15 area18)
	(ground_path area18 area15)

	(ground_path area21 area23)
	(ground_path area23 area21)
	(ground_path area23 area24)
	(ground_path area24 area23)
	(ground_path area23 area25)
	(ground_path area25 area23)
	(ground_path area24 area26)
	(ground_path area26 area24)
	(ground_path area24 area30)
	(ground_path area30 area24)
	(ground_path area30 area27)
	(ground_path area27 area30)
	(ground_path area27 area28)
	(ground_path area28 area27)
	(ground_path area25 area31)
	(ground_path area31 area25)
	(ground_path area31 area29)
	(ground_path area29 area31)
	(ground_path area30 area33)
	(ground_path area33 area30)
	(ground_path area21 area36)
	(ground_path area36 area21)
	(ground_path area23 area35)
	(ground_path area35 area23)
	(ground_path area35 area36)
	(ground_path area36 area35)
	(ground_path area36 area37)
	(ground_path area37 area36)
	(ground_path area34 area37)
	(ground_path area37 area34)	
	(ground_path area38 area40)
	(ground_path area40 area38)
	(ground_path area40 area39)
	(ground_path area39 area40)
	(ground_path area35 area38)
	(ground_path area38 area35)

	(ground_path area28 area7)
	(ground_path area7 area28)
	(ground_path area37 area18)
	(ground_path area18 area37)

	(ground_path area41 area43)
	(ground_path area43 area41)
	(ground_path area43 area44)
	(ground_path area44 area43)
	(ground_path area43 area45)
	(ground_path area45 area43)
	(ground_path area44 area46)
	(ground_path area46 area44)
	(ground_path area44 area50)
	(ground_path area50 area44)
	(ground_path area50 area47)
	(ground_path area47 area50)
	(ground_path area47 area48)
	(ground_path area48 area47)
	(ground_path area45 area51)
	(ground_path area51 area45)
	(ground_path area51 area49)
	(ground_path area49 area51)
	(ground_path area50 area53)
	(ground_path area53 area50)
	(ground_path area43 area55)
	(ground_path area55 area43)

	(ground_path area33 area53)
	(ground_path area53 area33)
	(ground_path area13 area53)
	(ground_path area53 area13)

	(visible_from disaster1 area11)
	(visible_from disaster2 area9)
	(visible_from disaster3 area21)
	(visible_from disaster4 area22)
	(visible_from disaster5 area3)
	(visible_from disaster6 area53)
	(visible_from disaster7 area18)
	(visible_from disaster8 area32)
	(visible_from disaster9 area55)
	(visible_from disaster10 area8)
	(visible_from disaster11 area16)
	(visible_from disaster12 area36)
	(visible_from disaster13 area38)

	(in_range area2 area1)
	(in_range area3 area1)
	(in_range area1 area1)
	(in_range area9 area13)
	(in_range area10 area13)
	(in_range area13 area13)

	(in_range area22 area21)
	(in_range area23 area21)
	(in_range area21 area21)
	(in_range area29 area33)
	(in_range area30 area33)
	(in_range area33 area33)

	(in_range area42 area41)
	(in_range area43 area41)
	(in_range area41 area41)
	(in_range area49 area53)
	(in_range area50 area53)
	(in_range area53 area53)
)

(:goal (and
(communicated_data disaster1)
(communicated_data disaster2)
(communicated_data disaster3)
(communicated_data disaster4)
(communicated_data disaster5)
(communicated_data disaster6)
(communicated_data disaster7)
(communicated_data disaster8)
(communicated_data disaster9)
(communicated_data disaster10)
(communicated_data disaster11)
(communicated_data disaster12)
(communicated_data disaster13)
(box_at_area box1 area41)
(box_at_area box2 area44)
(box_at_area box3 area48)
(box_at_area box4 area3)
(box_at_area box5 area50)
(box_at_area box6 area33)
(box_at_area box7 area8)
(box_at_area box8 area51)
(box_at_area box9 area13)
(box_at_area box10 area55)
(have_water_sample_cdm cdm2 area36)
(have_water_sample_cdm cdm1 area30)
(have_water_sample_cdm cdm3 area12)
(have_water_sample_cdm cdm3 area50)
(have_water_sample_cdm cdm4 area19)
(have_water_sample_cdm cdm5 area28)
(have_water_sample_cdm cdm6 area38)
(have_water_sample_cdm cdm6 area54)
(have_water_sample_cdm cdm5 area1)
(have_water_sample_cdm cdm1 area48)
	)
)

)
