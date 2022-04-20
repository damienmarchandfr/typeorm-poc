import {
	Entity,
	PrimaryGeneratedColumn,
	Column,
	ManyToOne,
	OneToMany,
} from 'typeorm'
import { File } from './FIle.model'
import { User } from './User.model'

@Entity()
export class Message {
	@PrimaryGeneratedColumn()
	id!: number

	@Column({
		type: 'text',
	})
	content!: string

	// ----------- USER ---------

	@ManyToOne(() => User, (user) => user.messages)
	creator!: User

	// ----------- FILES ---------

	@OneToMany(() => File, (file) => file.message, {
		cascade: ['remove', 'soft-remove'],
		eager: true,
	})
	attachements!: File[]
}
