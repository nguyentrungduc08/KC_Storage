# KC Storage Service - Thrift

Xây dựng một service độc lập với chức năng lưu trử thông tin User. Sử dụng cơ sở dữ liệu [Kyoto Cabinet](http://fallabs.com/kyotocabinet/) và Thrift.

# Note

- tất cả các id và key lưu bằng binary string.
- các thao tác:
+ get 
+ put (phân biệt add/set).
+ remove

``` 
service {
	get(key)
	put(key, value, option)
	remove(ket)
}
```
```
option 
- add:
- update:
- overide:  
```

- check thread-safe
- check key exist.
- thao tác push (asyn-task cho quá trình put lưu vào một hàng đợi rồi chạy bất đồng bộ).
