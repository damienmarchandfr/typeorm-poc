import { Main } from "./main.model"

let storage: any = {}

export function getStorage() {
	if (!storage) {
		storage = {}
	}
	return storage
}

