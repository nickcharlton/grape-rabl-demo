organisation = Organisation.create(name: 'The Company',
                                   description: 'A secret organisation.')

user = User.create(name: 'A User')
user.organisation = organisation
user.save
