namespace cpp KC_Storage

enum putOption {
	add,
	update,
	remove
}


service KC_Storage {
	i32  totalRecord();
	string get(1: string key),
	bool put(1: string key, 2: string value, 3: putOption opt),
	bool remove (1: string key)
}
