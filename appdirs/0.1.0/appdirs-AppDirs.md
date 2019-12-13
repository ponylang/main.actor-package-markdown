# AppDirs
<span class="source-link">[[Source]](src/appdirs/appdirs.md#L20)</span>
```pony
class ref AppDirs
```

## Constructors

### create
<span class="source-link">[[Source]](src/appdirs/appdirs.md#L29)</span>


An AppDirs instance derives the platform specific directories
from the process environment variables.
It will return appdirs for the user of the current process.

Creating appdirs requires:
 - passing environment variables, only on unix and osx systems.
 - a name of the app you want to get directories for
 - optionally: a name of the app author (be it a company or a person)
 - optionally: a version of your app, if you want to separate directories also by version


```pony
new ref create(
  env_vars: (Array[String val] box | None val),
  app_name: String val,
  app_author: (String val | None val) = reference,
  app_version: (String val | None val) = reference,
  roaming: Bool val = false,
  osx_as_unix: Bool val = false)
: AppDirs ref^
```
#### Parameters

*   env_vars: ([Array](builtin-Array.md)\[[String](builtin-String.md) val\] box | [None](builtin-None.md) val)
*   app_name: [String](builtin-String.md) val
*   app_author: ([String](builtin-String.md) val | [None](builtin-None.md) val) = reference
*   app_version: ([String](builtin-String.md) val | [None](builtin-None.md) val) = reference
*   roaming: [Bool](builtin-Bool.md) val = false
*   osx_as_unix: [Bool](builtin-Bool.md) val = false

#### Returns

* [AppDirs](appdirs-AppDirs.md) ref^

---

## Public Functions

### user_home_dir
<span class="source-link">[[Source]](src/appdirs/appdirs.md#L64)</span>


```pony
fun box user_home_dir()
: String val ?
```

#### Returns

* [String](builtin-String.md) val ?

---

### user_data_dir
<span class="source-link">[[Source]](src/appdirs/appdirs.md#L67)</span>


Returns the full path to the user-specific data dir for this application.


```pony
fun box user_data_dir()
: String val ?
```

#### Returns

* [String](builtin-String.md) val ?

---

### site_data_dirs
<span class="source-link">[[Source]](src/appdirs/appdirs.md#L108)</span>


Returns an array of full paths to the user-shared data dirs for this application.


```pony
fun box site_data_dirs()
: Array[String val] val ?
```

#### Returns

* [Array](builtin-Array.md)\[[String](builtin-String.md) val\] val ?

---

### user_config_dir
<span class="source-link">[[Source]](src/appdirs/appdirs.md#L154)</span>


Return full path to the user-specific config dir for this application.


```pony
fun box user_config_dir()
: String val ?
```

#### Returns

* [String](builtin-String.md) val ?

---

### site_config_dirs
<span class="source-link">[[Source]](src/appdirs/appdirs.md#L189)</span>


Return full path to the user-shared config dirs for this application.


```pony
fun box site_config_dirs()
: Array[String val] val ?
```

#### Returns

* [Array](builtin-Array.md)\[[String](builtin-String.md) val\] val ?

---

### user_cache_dir
<span class="source-link">[[Source]](src/appdirs/appdirs.md#L231)</span>


Return full path to the user-specific cache dir for this application.


```pony
fun box user_cache_dir()
: String val ?
```

#### Returns

* [String](builtin-String.md) val ?

---

### user_state_dir
<span class="source-link">[[Source]](src/appdirs/appdirs.md#L265)</span>


Return full path to the user-specific state dir for this application.

See https://wiki.debian.org/XDGBaseDirectorySpecification#state


```pony
fun box user_state_dir()
: String val ?
```

#### Returns

* [String](builtin-String.md) val ?

---

### user_log_dir
<span class="source-link">[[Source]](src/appdirs/appdirs.md#L294)</span>


Return full path to the user-specific log dir for this application.


```pony
fun box user_log_dir()
: String val ?
```

#### Returns

* [String](builtin-String.md) val ?

---

