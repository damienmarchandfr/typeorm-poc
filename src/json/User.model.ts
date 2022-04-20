import {
	Entity,
	PrimaryGeneratedColumn,
	Column,
	OneToOne,
	JoinColumn,
	OneToMany,
} from 'typeorm'

interface File {
	name: string
	size: number
}

@Entity()
export class User {
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
	picture!: File

	// ------------ MESSAGES ----------

	@Column('json', {
		nullable: true,
	})
	files!: File[]
}
