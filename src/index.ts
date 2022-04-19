import { DataSource } from 'typeorm'
import { File } from './FIle.model'
import { Message } from './Message.model'
import { User } from './User.model'

export const AppDataSource = new DataSource({
	type: 'postgres',
	host: 'localhost',
	port: 5432,
	username: 'postgres',
	password: 'postgres',
	database: 'filepoc',
	synchronize: true,
	logging: true,
	entities: [User, Message, File],
	subscribers: [],
	migrations: [],
	dropSchema: true,
})
;(async () => {
	const dataSource = await AppDataSource.initialize()

	// -------------- USER -----------

	const file = new File()
	file.name = 'file.png'
	file.size = 2
	await dataSource.manager.save(file)
	const userPictureId = file.id

	const user = new User()
	user.firstName = 'Damien'
	user.picture = file

	await dataSource.manager.save(user)

	// If we delete user user picture must be deleted
	await dataSource.manager.remove(user)

	// Search for picture
	const deletedPicture = await dataSource.manager.findOne(File, {
		where: { id: userPictureId },
	})

	// QUESTION : why my picture linked to my deleted user is not deleted ?
	console.log(deletedPicture)

	// ----------------- MESSAGE ---------

	const messageUser = new User()
	messageUser.firstName = 'Damien Message'
	await dataSource.manager.save(messageUser)

	const message = new Message()
	message.content = 'This is a message with 5 files'
	message.creator = messageUser
	message.attachements = []
	await dataSource.manager.save(message)

	let incr = 0
	for (let i of Array(5).fill(0)) {
		const f = new File()
		f.name = `file-message-${i}.png`
		f.size = i
		f.message = message
		await dataSource.manager.save(f)

		message.attachements.push(f)
		await dataSource.manager.save(message)

		i += incr
		incr++
	}

	const messages = await dataSource.manager.find(Message)
	console.log(messages)
})()
