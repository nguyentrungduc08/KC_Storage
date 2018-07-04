namespace cpp KC_Storage

struct Z_data { 
	1: i32 errorCode,
	2: string data
}

struct Z_total {
	1: i32 errorCode,
	2: i64 total

}

struct Z_status {
	1: i32 errorCode,
	2: bool status
}

enum putOption {
	add,
	update,
	overide
}


service KC_Storage {
	Z_total  totalRecord();
	Z_data get(1: string key),
	Z_status put(1: string key, 2: string value, 3: putOption opt),
	Z_status remove (1: string key)
}
