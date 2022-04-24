import { Column, Entity, ManyToOne, PrimaryGeneratedColumn } from 'typeorm'
import { Files } from './Files.model'

@Entity()
export class FileContent {
	@PrimaryGeneratedColumn()
	id!: number

	@Column({
		nullable: false,
		type: 'varchar',
	})
	fileName!: string

	@Column({
		nullable: false,
		type: 'varchar',
	})
	path!: string

	@ManyToOne(() => Files, (file) => file.contents, {
		nullable: true,
	})
	files?: Files
}
