import { SIGINT } from 'constants'
import {
	Entity,
	PrimaryGeneratedColumn,
	Column,
	OneToOne,
	JoinColumn,
	OneToMany,
} from 'typeorm'
import { Main } from './main.model'
import { Sign } from './sign.decorator'

interface File {
	name: string
	size: number
}

@Entity()
export class User extends Main {
	@PrimaryGeneratedColumn()
	id!: number

	@Column({
		type: 'text',
	})
	firstName!: string

	// ---------- FILES ---------

	@Column('json', {
		nullable: true,
	})
	@Sign()
	picture!: File

	// ------------ MESSAGES ----------

	@Column('json', {
		nullable: true,
	})
	@Sign()
	files!: File[]
}
