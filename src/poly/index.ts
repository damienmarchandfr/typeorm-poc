import { DataSource } from 'typeorm'
import { File } from './File.model'
import { FileContent } from './FileContent.model'
import { Files } from './Files.model'
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
	entities: [User, File, Files, FileContent],
	subscribers: [],
	migrations: [],
	dropSchema: true,
})
;(async () => {
	const dataSource = await AppDataSource.initialize()

	const user = new User()
	user.name = 'Damien'
	await dataSource.getRepository(User).save(user)

	const fileContent = new FileContent()
	fileContent.fileName = 'bestPicture.png'
	fileContent.path = `/images/${user.id}/${fileContent.fileName}`
	await dataSource.getRepository(FileContent).save(fileContent)

	const file = new File()
	file.content = fileContent
	await dataSource.getRepository(File).save(file)

	user.picture = file
	await dataSource.getRepository(User).save(user)

	let u = await dataSource.getRepository(User).findOneBy({
		id: user.id,
	})
	// console.log(u)

	let index = 0
	const files = new Files()
	files.contents = []
	await dataSource.getRepository(Files).save(files)

	for (let i of Array(5).fill(0)) {
		const content = new FileContent()
		content.fileName = `file-${index}.png`
		content.path = `/images/${user.id}/${content.fileName}`

		content.files = files

		await dataSource.getRepository(FileContent).save(content)
		files.contents.push(content)
		index++
	}
	await dataSource.getRepository(Files).save(files)

    
	user.files = files
	await dataSource.getRepository(User).save(user)

	u = await dataSource.getRepository(User).findOneBy({
		id: user.id,
	})
	console.log(u)
})()
