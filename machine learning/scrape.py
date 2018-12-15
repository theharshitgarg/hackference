import urllib.request
import urllib
from bs4 import BeautifulSoup as soup

query = "data science" #machine learning,artificial learning,big data
fp = urllib.request.urlopen("http://relatedwords.org/relatedto/"+query)
mybytes = fp.read()


web_soup = soup(urllib.urlopen(url))

# get main-content div
main_div = web_soup.find(name="div", attrs={'class': 'results-area'})
print main_div


similar = []
for div in main_div:
	similar.append(div.text())



mystr = mybytes.decode("utf8")
fp.close()




print(mystr)
