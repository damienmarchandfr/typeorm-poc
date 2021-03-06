import { DataSource } from 'typeorm'
import { Main } from './main.model'
import { getStorage } from './store'
import { User } from './User.model'

export async function sign<T extends Main>(toSign: T) {
	const name = toSign.getName()
	const storage = getStorage()
	const fields = storage[name] || []

	for (const field of fields) {
		console.log(field)
	}

	// Sign data
}

export const AppDataSource = new DataSource({
	type: 'postgres',
	host: 'localhost',
	port: 5432,
	username: 'postgres',
	password: 'postgres',
	database: 'filepoc',
	synchronize: true,
	logging: true,
	entities: [User],
	subscribers: [],
	migrations: [],
	dropSchema: true,
})
;(async () => {
	const dataSource = await AppDataSource.initialize()

	const user = new User()
	user.firstName = 'Damien'

	await dataSource.manager.save(user)

	let userCreated = await dataSource.manager.findOneBy(User, {
		id: user.id,
	})
	console.log(userCreated)

	user.picture = {
		name: 'picture.png',
		size: 2,
	}

	await dataSource.manager.save(user)

	userCreated = await dataSource.manager.findOneBy(User, {
		id: user.id,
	})
	console.log(userCreated)

	user.files = [
		{
			name: 'firstFile.png',
			size: 3,
		},
		{
			name: 'secondFile.jpeg',
			size: 4,
		},
	]
	await dataSource.manager.save(user)

	userCreated = await dataSource.manager.findOneBy(User, {
		id: user.id,
	})
	console.log(userCreated)

	sign(userCreated as User)
})()
