import {
	AfterLoad,
	Column,
	Entity,
	JoinColumn,
	OneToOne,
	PrimaryGeneratedColumn,
} from 'typeorm'
import { FileContent } from './FileContent.model'

@Entity()
export class File {
	@AfterLoad()
	async afterLoad() {
		await this.sign()
	}

	@PrimaryGeneratedColumn()
	id!: number

	@OneToOne(() => FileContent, {
		eager: true,
		nullable: false,
	})
	@JoinColumn()
	content!: FileContent

	private async sign() {
		await new Promise((r) => {
			setTimeout(() => {
				this.content.path = this.content.path + '/signed'
				return r(true)
			}, 200)
		})
	}
}
