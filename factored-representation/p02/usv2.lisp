;;;--------------------------------------------------------------
(defproblem usv2 floods-usv
   (
    ;;;
    ;;;  facts
    ;;;
    (robot usv2)
    (usv usv2)
    (area area1)
    (area area2)
    (area area3)
    (area area4)
    (area area5)
    (area area6)
    (area area7)
    (area area8)
    (area area9)
    (area area10)
    (area area11)
    (area area12)
    (area area13)
    (area area14)
    (area area15)
    (area area16)
    (area area17)
    (area area18)
    (area area19)
    (area area20)
    (disaster disaster1)
    (disaster disaster2)
    (disaster disaster3)
    (disaster disaster4)
    (disaster disaster5)
    (disaster disaster6)
    (cdm cdm1)
    (cdm cdm2)
    (store ugv1Store)
    (store ugv2Store)
    (store ugv3Store)
    (store ugv4Store)
    (store usv1Store)
    (store usv2Store)
    (store usv3Store)
    (store usv4Store)
    (box box1)
    (box box2)
    (box box3)
    
    ;;;
    ;;;  initial states
    ;;;
	(at usv2 area1)
	(store_of usv2Store usv2)

	(cdm_at cdm1 area1)
	(cdm_at cdm2 area13)
	(empty ugv1Store)
	(empty ugv2Store)
	(empty ugv3Store)
	(empty ugv4Store)
	(empty usv1Store)
	(empty usv2Store)
	(empty usv3Store)
	(empty usv4Store)

	(box_at_cdm box1 cdm1)
	(box_at_cdm box2 cdm2)
	(box_at_cdm box3 cdm1)
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

	(visible_from disaster1 area11)
	(visible_from disaster2 area2)
	(visible_from disaster3 area17)
	(visible_from disaster4 area5)
	(visible_from disaster5 area9)
	(visible_from disaster6 area7)

	(in_range area2 area1)
	(in_range area3 area1)
	(in_range area1 area1)
	(in_range area9 area13)
	(in_range area10 area13)
	(in_range area13 area13)
)

(:unordered

(:task get_picture disaster1)
))

(find-plans 'usv2 :which :shallowest :verbose :plans)
