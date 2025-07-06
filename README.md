# D++lang
A new way to program.


How to install?

1. Download the files from Releases:

- d.exe
- install_dpp.ps1

2. Open PowerShell **as administrator** and navigate to the folder where you downloaded the files.

3. Run the installation script:

```powershell
.\install_dpp.ps1

```

# Official D Language Documentation

**Titan Engine v1.0 Release — Declaration of Syntactic Sovereignty**
**Author: Ángel**
**The D language is complete, autonomous, and absolute. Everything that works in compilation is enshrined in its syntax.**

---

### D Language Syntax

Every form, every token, every reserved word, every operator, every control structure, every valid construct: all of this constitutes the official D syntax. This is the **formal documentation**.

---

### High-Level Constructs

The D language defines new, more expressive, powerful, and safer forms:

#### `type` — structure definition

```d
type Person {
name: str;
age: int;
}
```

#### `def` — typed function declaration

```d
def int add(int a, int b) {
return a + b;
}
```

#### `own` — explicit memory ownership

```d
own str hello = strdup("Hello world");
```

> Memory is freed upon exiting the block.

#### `print()` and `println()` — printing with interpolation

```d
print(f"Age is {person.age}");
``"

#### `import` — direct modular loading

```d
import math;
```

> Access standard and custom modules.

#### Anonymous `{}` Blocks and Free Nesting

```d
if (condition) {
{
own ​​str message = strdup("Hello");
println(message);
}
}
```

---

### D Language Operators

* Arithmetic: `+`, `-`, `*`, `/`, `%`
* Increment/Decrement: `++`, `--`
* Relational: `==`, `!=`, `>`, `<`, `>=`, `<=`
* Logical: `&&`, `||`, `!`
* Bitwise: `&`, `|`, `^`, `~`, `<<`, `>>`
* Assignment: `=`, `+=`, `-=`, `*=`, `/=`, `%=`, `&=`, `|=`, `^=`, `<<=`, `>>=`
* Pointers: `*`, `&`, `->`
* Comma: `,`
* Subscript: `[]`
* Ternary conditional: `? :`
* Member access: `.`
* Cast: `(type)`
* Sizeof: `sizeof`
* Addressing: `&`

---

### Precedence and associativity

D respects the universal operator precedence table, as recognized by compilers.

---

### Reserved Words and Recognized Constructs

```d
inline
restrict
noreturn
_Thread_local
_Alignas
_Alignof
_Generic
_Static_assert
_Atomic
```

---

### Fundamental Macros

```d
__FILE__
__LINE__
__DATE__
__TIME__
__func__
__STDC__
__STDC_VERSION__
```

---

### Conditional Compilation

```d
#ifdef IDENTIFIER
#elif defined(OTHER)
#else
#endif
```

---

### Technical Extensions Supported by D

```d
__attribute__((...))
__declspec(...)
__builtin_popcount()
__sync_fetch_and_add()
__asm__ __volatile__("instruction")
```

---

### Calling Conventions

```d
__attribute__((cdecl))
__attribute__((stdcall))
__attribute__((fastcall))
```

---

### Standard D Language Headers

```d
#include <fenv.h>
#include <dirent.h>
#include <syslog.h>
#include <sched.h>
#include <ucontext.h>
#include <complex.h>
```

---


## Full C Library Support

D++lang is fully compatible with all C libraries — standard or external — as long as they are correctly installed on the system and available at compile time.

You may include any C header and call its functions directly:

```d++
#include <math.h>
#include <raylib.h>

def int main() {
    println(f"sin(0.5) = {sin(0.5)}");
    InitWindow(800, 600, "Raylib in D++lang");
    CloseWindow();
    return 0;
}

**This is D. No copying, no inheritance. Everything that compiles in D is from D.**
**D is a sovereign language. It contains everything.**



```

# D++lang Standard Library

The D++lang Standard Library is designed to be a collection of essential modules similar to Python's standard library. Our goal is to encourage rapid development and widespread adoption by making it easy for developers to integrate with external libraries and build robust applications.

## Key Modules

- **math** — Provides mathematical functions such as `sqrt()`, `sin()`, and `cos()`.
- **os** — Offers functions for interacting with the operating system (file I/O, process management, etc.).
- **io** — Contains functions and utilities for input/output operations.
- **string** — Utilities for string manipulation and formatting.
- **time** — Functions to work with dates, times, and timing.
- **random** — Tools for generating random numbers and handling randomness.

## Design Principles

- **Legibility & Modern Syntax:** D++lang boasts a clear, modern syntax with keywords like `type`, `def`, and explicit type declarations that keep code both readable and closely aligned with machine-level operations.
- **Explicit Type Declarations:** While ensuring a syntax that enhances readability, all types are declared explicitly (e.g., `int`) to maintain precision and performance.
- **C Compatibility:** The language is fully compatible with C libraries. This means you can supercharge your applications with an extensive range of pre-existing libraries.
- **Rapid Library Integration:** The standard library not only eases the development of in-house modules but also paves the way to quickly “wrap” or integrate external libraries, promoting a fast and efficient development cycle.
- **Modular Approach:** A modular design ensures that each component functions independently while integrating smoothly with the rest of the ecosystem.

## How To Contribute

We want D++lang to become not only a powerful language but also one with a strong, vibrant community. Here’s how you can help:

- **Submit New Modules:** Contribute modules that fill gaps or extend current functionality.
- **Enhance Existing Modules:** Improve documentation, add test cases, or optimize performance.
- **Share Your Projects:** Let us know how you’re using the standard library in your projects.

With a community-driven effort, D++lang aims to surpass languages like C by blending simplicity, control, and rapid integration of libraries—even if its user base starts small.

Happy coding with D++lang!
