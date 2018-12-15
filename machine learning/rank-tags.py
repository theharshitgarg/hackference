text = """ The intensity of the feeling makes up for the disproportion of the objects.  Things are equal to the imagination, which have the power of affecting the mind with an equal degree of terror, admiration, delight, or love.  When Lear calls upon the heavens to avenge his cause, "for they are old like him," there is nothing extravagant or impious in this sublime identification of his age with theirs; for there is no other image which could do justice to the agonising sense of his wrongs and his despair! """

BAD_CHARS = ".!?,\'\""

words = [ word.strip(BAD_CHARS) for word in text.strip().split() if len(word) > 4 ]

word_freq = {}

for word in words :
  word_freq[word] = word_freq.get(word, 0) + 1


tx = [ (v, k) for (k, v) in word_freq.items()]
tx.sort(reverse=True)
word_freq_sorted = [ (k, v) for (v, k) in tx ]

print(word_freq_sorted)

term_importance = lambda word : 1.0/word_freq[word]

map(term_importance, word_freq.keys())