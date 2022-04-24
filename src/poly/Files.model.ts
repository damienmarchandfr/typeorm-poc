import {
	AfterLoad,
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
	@AfterLoad()
	async load() {
		await this.sign()
	}

	@PrimaryGeneratedColumn()
	id!: number

	@OneToMany(() => FileContent, (fileContent) => fileContent.files, {
		eager: true,
	})
	contents!: FileContent[]

	private async sign() {
		for (const content of this.contents) {
			await new Promise((r) => {
				setTimeout(() => {
					content.path = content.path + '/signed'
					return r(true)
				}, 200)
			})
		}
	}
}
