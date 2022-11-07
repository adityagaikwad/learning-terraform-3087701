init:
	terraform init

plan: init
	terraform plan \
	-out plans/create.plan

apply: plan
	terraform apply plans/create.plan

plandestroy: init
	terraform plan \
	-destroy -out plans/destroy.plan

destroy: plandestroy
	terraform apply plans/destroy.plan
