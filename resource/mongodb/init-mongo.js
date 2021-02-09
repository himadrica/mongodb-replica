db.createUser(
	{
		user : "abhik",
		pwd	 : "admin",
		roles : [
			{
				role : "readWrite",
				db : "school-databse"
			}
		]
	}
)