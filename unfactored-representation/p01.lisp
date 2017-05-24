(in-package :shop2-user)
(defproblem p01 floods
   (
    ;;;
    ;;;  facts
    ;;;
    (robot uav1)
    (robot uav2)
    (robot uav3)    
    (robot ugv1)
    (robot ugv2)
    (robot ugv3)
    (robot usv1)
    (robot usv2)
    (robot usv3)
    (uav uav1)
    (uav uav2)
    (uav uav3)
    (ugv ugv1)
    (ugv ugv2)
    (ugv ugv3)
    (usv usv1)
    (usv usv2)
    (usv usv3)
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
    (disaster disaster1)
    (disaster disaster2)
    (disaster disaster3)
    (disaster disaster4)
    (disaster disaster5)
    (cdm cdm1)
    (cdm cdm2)
    (store ugv1Store)
    (store ugv2Store)
    (store ugv3Store)
    (store usv1Store)
    (store usv2Store)
    (store usv3Store)
    (box box1)
    (box box2)
    
    ;;;
    ;;;  initial states
    ;;;
	(cdm_at cdm1 area1)
	(cdm_at cdm2 area13)
	(at uav1 area1)
	(at uav2 area1)
	(at uav3 area13)
	(at ugv1 area1)
	(at ugv2 area1)
	(at ugv3 area13)
	(at usv1 area1)
	(at usv2 area1)
	(at usv3 area13)
	(store_of ugv1Store ugv1)
	(store_of ugv2Store ugv2)
	(store_of ugv3Store ugv3)	
	(store_of usv1Store usv1)
	(store_of usv2Store usv2)
	(store_of usv3Store usv3)	
	(box_at_cdm box1 cdm1)
	(box_at_cdm box2 cdm2)
	(empty ugv1Store)
	(empty ugv2Store)
	(empty ugv3Store)
	(empty usv1Store)
	(empty usv2Store)
	(empty usv3Store)

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
	(water_path area2 area14)
	(water_path area14 area2)

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
	(ground_path area3 area15)
	(ground_path area15 area3)

	(visible_from disaster1 area8)
	(visible_from disaster2 area12)
	(visible_from disaster3 area10)
	(visible_from disaster4 area7)
	(visible_from disaster5 area3)

	(in_range area2 area1)
	(in_range area3 area1)
	(in_range area1 area1)
	(in_range area9 area13)
	(in_range area10 area13)
	(in_range area13 area13)
)

(:unordered

(:task get_picture disaster2)
(:task get_picture disaster5)
(:task get_picture disaster4)
(:task get_picture disaster3)
(:task get_picture disaster1)
(:task deliver_box box1 area9)
(:task deliver_box box2 area11)
(:task deliver_sample cdm2 area8)
(:task deliver_sample cdm1 area9)
))

(find-plans 'p01 :verbose :plans)
