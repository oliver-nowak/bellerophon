import docclass
import sys
data = sys.stdin.read()
print data
cl=docclass.naivebayes(docclass.getwords)
cl.setdb('/Users/nowak/Desktop/spam_model.db')
classification = cl.classify(data, default='unknown')
print classification