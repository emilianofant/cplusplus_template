# cplusplus_template
My own personal Template for C++ projects, with a preconfigured Makefile, folders and some other stuff.

## To compile and run the app.
```
>$ make
>$ make run
```

## To run the tests
This template is using [Catch2](https://github.com/catchorg/Catch2/) as the Unit Testing framework by default. The header file is placed under the `test/` folder.

_You need to perform a clean and then run the `test` recipe_
```
>$ make clean
>$ make test TEST_SRC=test/test_math.cpp ARGSFLAGS="-DUNIT_TESTING"
```

- `TEST_SRC` parameter that defines the component/class/file to test.
- `ARGSFLAGS="-DUNIT_TESTING"` is flag that makes the compiler to add a Macro when the preprocessor is linking the files, in order avoid the application's `main` function, and instead run the `main` that the Catch2 Testing framework provides.
