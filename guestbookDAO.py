import string

class GuestbookDAO(object):

#Initialize our DAO class with the database and set the MongoDB collection we want to use
	def __init__(self, database):
		self.db = database
		self.mynames = database.mynames

#This function will handle the finding of names
	def find_names(self):
		l = []
		for each_name in self.mynames.find():
			l.append({'name':each_name['name'], 'email':each_name['email']})

		return l

#This function will handle the insertion of names
	def insert_name(self,newname,newemail):
		newname = {'name':newname,'email':newemail}
		self.mynames.insert(newname)
