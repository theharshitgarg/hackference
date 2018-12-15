import pandas as pd 
import tags as t
import nltk

headers = ["Id","Skills","Internships","Projects","Research work"]
data = pd.read_csv("./datasets/data.csv",names=headers)


print(data.head(5))
print(data.columns.values)

for line in data:
	print(line)


skills = data["Research work"]


tags = []
for skill in skills:
	if (not pd.isnull(skill)):		
		words = nltk.word_tokenize(skill)
		for word in words:
			for k,v in t.tags["CS"].items():
				if(word in v):
					tags.append((skill,k))



tags = set(tags)

for tag in tags:
	print(tag[0]," | ",tag[1])
