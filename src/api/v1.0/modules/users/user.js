class UserService {
	async test() {
		const data = await Promise.resolve("Working !");
		return data;
	}

	async demo() {
		const data = await Promise.resolve("Working !");
		return data;
	}
}

export const userService = new UserService();
