import {
	Column,
	Entity,
	JoinColumn,
	OneToMany,
	OneToOne,
	PrimaryGeneratedColumn,
} from 'typeorm'
import { File } from './File.model'
import { Files } from './Files.model'

@Entity()
export class User {
	@PrimaryGeneratedColumn()
	id!: number

	@Column({
		type: 'varchar',
	})
	name!: string

	@OneToOne(() => File, {
		nullable: true,
		eager: true,
	})
	@JoinColumn()
	picture?: File

	@OneToOne(() => Files, {
		nullable: true,
		eager: true,
	})
	@JoinColumn()
	files?: Files
}
