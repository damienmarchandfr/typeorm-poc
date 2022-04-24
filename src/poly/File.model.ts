import {
	Column,
	Entity,
	JoinColumn,
	OneToOne,
	PrimaryGeneratedColumn,
} from 'typeorm'
import { FileContent } from './FileContent.model'

@Entity()
export class File {
	@PrimaryGeneratedColumn()
	id!: number

	@OneToOne(() => FileContent, {
		eager: true,
		nullable: false,
	})
	@JoinColumn()
	content!: FileContent
}
