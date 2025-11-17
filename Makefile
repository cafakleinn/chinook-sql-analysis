N = 2

check:
	python -c 'from lambdacheck.cli import Check; Check()'

get:
	cp -R -u -T ~/public/assignment_$(N) ~/work/assignment_$(N)

run:
	jupyter nbconvert --to notebook --execute ./worksheet.ipynb --output ./worksheet.ipynb
