import {
	Entity,
	PrimaryGeneratedColumn,
	Column,
	BeforeRemove,
	ManyToOne,
	OneToOne,
	AfterRemove,
} from 'typeorm'
import { Message } from './Message.model'
import { User } from './User.model'

@Entity()
export class File {
	@PrimaryGeneratedColumn()
	id!: number

	@Column({
		type: 'text',
	})
	name!: string

	@Column({
		type: 'numeric',
	})
	size!: number

	@AfterRemove()
	private deleteFile() {
		console.log('Delete S3 file')
	}

	@ManyToOne(() => Message, (message) => message.attachements)
	message!: Message
}
