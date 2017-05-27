(define (problem floodsp05) (:domain Floods)
(:objects
	cdm1 cdm2 cdm3 cdm4 - cdm
	ugv1Store ugv2Store ugv3Store ugv4Store ugv5Store ugv6Store ugv7Store usv1Store usv2Store usv3Store usv4Store usv5Store usv6Store usv7Store - store
	area1 area2 area3 area4 area5 area6 area7 area8 area9 area10 area11 area12 area13 area14 area15 area16 area17 area18 area19 area20 area21 area22 area23 area24 area25 area26 area27 area28 area29 area30 area31 area32 area33 area34 area35 - area
	disaster1 disaster2 disaster3 disaster4 disaster5 disaster6 disaster7 disaster8 disaster9 - disaster
	box1 box2 box3 box4 box5 box6 - box

	(:private uav1
		uav1 - uav
	)

	(:private uav2
		uav2 - uav
	)

	(:private uav3
		uav3 - uav
	)

	(:private uav4
		uav4 - uav
	)

	(:private uav5
		uav5 - uav
	)

	(:private uav6
		uav6 - uav
	)

	(:private uav7
		uav7 - uav
	)

	(:private ugv1
		ugv1 - ugv
	)

	(:private ugv2
		ugv2 - ugv
	)

	(:private ugv3
		ugv3 - ugv
	)

	(:private ugv4
		ugv4 - ugv
	)

	(:private ugv5
		ugv5 - ugv
	)

	(:private ugv6
		ugv6 - ugv
	)

	(:private ugv7
		ugv7 - ugv
	)

	(:private usv1
		usv1 - usv
	)

	(:private usv2
		usv2 - usv
	)

	(:private usv3
		usv3 - usv
	)

	(:private usv4
		usv4 - usv
	)

	(:private usv5
		usv5 - usv
	)

	(:private usv6
		usv6 - usv
	)

	(:private usv7
		usv7 - usv
	)

	)
(:init
	(store_of ugv1Store ugv1)
	(store_of ugv2Store ugv2)
	(store_of ugv3Store ugv3)
	(store_of ugv4Store ugv4)
	(store_of ugv5Store ugv5)
	(store_of ugv6Store ugv6)
	(store_of ugv7Store ugv7)
	(store_of usv1Store usv1)
	(store_of usv2Store usv2)
	(store_of usv3Store usv3)
	(store_of usv4Store usv4)
	(store_of usv5Store usv5)
	(store_of usv6Store usv6)
	(store_of usv7Store usv7)
	(empty ugv1Store)
	(empty ugv2Store)
	(empty ugv3Store)
	(empty ugv4Store)
	(empty ugv5Store)
	(empty ugv6Store)
	(empty ugv7Store)
	(empty usv1Store)
	(empty usv2Store)
	(empty usv3Store)
	(empty usv4Store)
	(empty usv5Store)
	(empty usv6Store)
	(empty usv7Store)
	(cdm_at cdm1 area1)
	(cdm_at cdm2 area13)
	(cdm_at cdm3 area21)
	(cdm_at cdm4 area33)
	(at uav1 area1)
	(at uav2 area1)
	(at uav3 area13)
	(at uav4 area13)
	(at uav5 area21)
	(at uav6 area21)
	(at uav7 area33)
	(at usv1 area1)
	(at usv2 area1)
	(at usv3 area13)
	(at usv4 area13)
	(at usv5 area21)
	(at usv6 area21)
	(at usv7 area33)
	(at ugv1 area1)
	(at ugv2 area1)
	(at ugv3 area13)
	(at ugv4 area13)
	(at ugv5 area21)
	(at ugv6 area21)
	(at ugv7 area33)
	(box_at_cdm box1 cdm1)
	(box_at_cdm box2 cdm2)
	(box_at_cdm box3 cdm1)
	(box_at_cdm box4 cdm4)
	(box_at_cdm box5 cdm3)
	(box_at_cdm box6 cdm4)
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
	(water_path area22 area34)
	(water_path area34 area22)

	(water_path area27 area8)
	(water_path area8 area27)
	(water_path area28 area7)
	(water_path area7 area28)

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
	(ground_path area23 area35)
	(ground_path area35 area23)

	(ground_path area28 area7)
	(ground_path area7 area28)
	(ground_path area27 area8)
	(ground_path area8 area27)

	(visible_from disaster1 area21)
	(visible_from disaster2 area32)
	(visible_from disaster3 area23)
	(visible_from disaster4 area2)
	(visible_from disaster5 area5)
	(visible_from disaster6 area20)
	(visible_from disaster7 area24)
	(visible_from disaster8 area29)
	(visible_from disaster9 area34)

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
(box_at_area box1 area10)
(box_at_area box2 area35)
(box_at_area box3 area6)
(box_at_area box4 area31)
(box_at_area box5 area8)
(box_at_area box6 area7)
(have_water_sample_cdm cdm2 area10)
(have_water_sample_cdm cdm1 area22)
(have_water_sample_cdm cdm3 area32)
(have_water_sample_cdm cdm3 area17)
(have_water_sample_cdm cdm4 area25)
(have_water_sample_cdm cdm1 area9)
	)
)

)
