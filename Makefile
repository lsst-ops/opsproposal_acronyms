#for dependency you want all tex files  but for acronyms you do not want to include the acronyms file itself.
#txt=$(filter-out $(wildcard *acronyms.txt) , $(wildcard *.txt))  
txt=Draft.txt

all: acronyms.txt

acronyms.txt :$(txt) myacronyms.txt skipacronyms.txt Draft.txt
	generateAcronyms.py -t "OPS LSST" -n $(txt) 


Draft.txt :
	python3 grabDoc.py  > Draft.txt

