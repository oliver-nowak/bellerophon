import docclass
import os

def train_data(dir, category):
	root = '/Users/nowak/Desktop/data'
	path = os.path.join(root, dir)
	data = {}
	for dir_entry in os.listdir(path):
	    dir_entry_path = os.path.join(path, dir_entry)
	    if os.path.isfile(dir_entry_path):
	        with open(dir_entry_path, 'r') as my_file:
	            cl.train(my_file.read(), category)



cl=docclass.naivebayes(docclass.getwords)
cl.setdb('spam_model.db')
cl.train("/Users/nowak/Desktop/data/ham/00001.1a31cc283af0060967a233d26548a6ce", 'spam')

# train spam
# train_data('spam', 'spam')
# print ">>> Done training spam..."

# # train spam2
# train_data('spam_2', 'spam')
# print ">>> Done training spam2..."

# # train ham
# train_data('easy_ham', 'ham')
# print ">>> Done training ham..."

# # train ham2
# train_data('easy_ham_2', 'ham')
# print ">>> Done training ham2..."

# # train hard ham
# train_data('hard_ham', 'ham')
# print ">>> Done training hard ham..."