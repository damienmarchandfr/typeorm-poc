import {
	Entity,
	PrimaryGeneratedColumn,
	Column,
	OneToOne,
	JoinColumn,
	OneToMany,
} from 'typeorm'
import { File } from './FIle.model'
import { Message } from './Message.model'

@Entity()
export class User {
	@PrimaryGeneratedColumn()
	id!: number

	@Column({
		type: 'text',
	})
	firstName!: string

	// ---------- FILES ---------

	@OneToOne(() => File, {
		eager: true,
		cascade: ['remove', 'soft-remove'],
	})
	@JoinColumn()
	picture!: File

	// ------------ MESSAGES ----------

	@OneToMany((type) => Message, (message) => message.creator, {
		cascade: ['remove', 'soft-remove'],
	})
	messages!: Message[]
}
