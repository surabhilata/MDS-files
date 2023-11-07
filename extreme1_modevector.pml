load fws-ev1.pdb
run modevectors.py
split_states fws-ev1
modevectors fws-ev1_0001, fws-ev1_0100, cutoff=.0, head_length=1.5, head=0.4, headrgb=(1,.2,.1)
set cartoon_trace,1
set cartoon_tube_radius, 0.5
cmd.disable('all')
cmd.enable('extreme1_0001',1)
cmd.enable('modevectors',1)
set ray_shadow,0
save PCA_porcupine_extreme1.pse, format=pse
