use fmt;
use wren;

export fn main() void = {
	let config = *wren::stdio_config;
	config.bind_foreign_method = &bind_foreign_method;

	const vm = wren::new(&config);
	defer wren::destroy(vm);

	wren::interpret(vm, "main", `
	class Example {
		foreign static greet(user)
	}

	System.print(Example.greet("Harriet"))
	`)!;
};

fn bind_foreign_method(
	vm: *wren::vm,
	module: str,
	class_name: str,
	is_static: bool,
	signature: str,
) nullable *wren::foreign_method_fn = {
	const is_valid = class_name == "Example" &&
		signature == "greet(_)" && is_static;
	if (!is_valid) {
		return null;
	};
	return &greet_user;
};

fn greet_user(vm: *wren::vm) void = {
	const user = wren::get_string(vm, 1)!;
	const greeting = fmt::asprintf("Hello, {}!", user)!;
	defer free(greeting);
	wren::set_string(vm, 0, greeting);
};
