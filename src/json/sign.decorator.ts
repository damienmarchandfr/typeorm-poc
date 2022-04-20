import { getStorage } from './store'
import { Main } from './main.model'

export function Sign<T extends Main>() {
	return (object: T, key: string) => {
		const storage = getStorage()
		const name = object.getName()

		if (!storage[name]) {
			storage[name] = []
		}

		// Add to meta storage
		storage[name].push(key)
	}
}
