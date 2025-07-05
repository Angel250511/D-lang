# D++-lang
A new way to program.


How to install?

irm https://raw.githubusercontent.com/Angel25051/d-lang/main/installers/installar.ps1 | iex




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

**This is D. No copying, no inheritance. Everything that compiles in D is from D.**
**D is a sovereign language. It contains everything.**
