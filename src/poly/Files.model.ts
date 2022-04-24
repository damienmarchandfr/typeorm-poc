import {
	Column,
	Entity,
	JoinColumn,
	OneToMany,
	OneToOne,
	PrimaryGeneratedColumn,
} from 'typeorm'
import { FileContent } from './FileContent.model'

@Entity()
export class Files {
	@PrimaryGeneratedColumn()
	id!: number

	@OneToMany(() => FileContent, (fileContent) => fileContent.files, {
		eager: true,
	})
	contents!: FileContent[]
}
