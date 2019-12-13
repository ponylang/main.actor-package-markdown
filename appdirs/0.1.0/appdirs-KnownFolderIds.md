# KnownFolderIds
<span class="source-link">[[Source]](src/appdirs/known_folders.md#L5)</span>

Known folder ids as described in:
https://docs.microsoft.com/en-ca/windows/desktop/shell/knownfolderid
functions return the little endian byte values of the folderid GUIDs


```pony
primitive val KnownFolderIds
```

## Constructors

### create
<span class="source-link">[[Source]](src/appdirs/known_folders.md#L5)</span>


```pony
new val create()
: KnownFolderIds val^
```

#### Returns

* [KnownFolderIds](appdirs-KnownFolderIds.md) val^

---

## Public Functions

### profile
<span class="source-link">[[Source]](src/appdirs/known_folders.md#L11)</span>


The user's profile folder. A typical path is C:\Users\username.
Applications should not create files or folders at this level;
they should put their data under the locations referred to by CSIDL_APPDATA or CSIDL_LOCAL_APPDATA.
However, if you are creating a new Known Folder the profile root referred to by CSIDL_PROFILE is appropriate.

FOLDERID_Profile
5E6C858F-0E22-4760-9AFE-EA3317B67173


```pony
fun box profile()
: Array[U8 val] val
```

#### Returns

* [Array](builtin-Array.md)\[[U8](builtin-U8.md) val\] val

---

### app_data_roaming
<span class="source-link">[[Source]](src/appdirs/known_folders.md#L23)</span>


The file system directory that serves as a common repository for application-specific data.
A typical path is C:\Documents and Settings\username\Application Data.

KNOWNFOLDERID: FOLDERID_RoamingAppData
GUID: 3EB685DB-65F9-4CF6-A03A-E3EF65729F3D


```pony
fun box app_data_roaming()
: Array[U8 val] val
```

#### Returns

* [Array](builtin-Array.md)\[[U8](builtin-U8.md) val\] val

---

### app_data_local
<span class="source-link">[[Source]](src/appdirs/known_folders.md#L33)</span>


The file system directory that serves as a data repository for local (nonroaming) applications.
A typical path is C:\Documents and Settings\username\Local Settings\Application Data.

FOLDERID_LocalAppData
F1B32785-6FBA-4FCF-9D55-7B8E7F157091


```pony
fun box app_data_local()
: Array[U8 val] val
```

#### Returns

* [Array](builtin-Array.md)\[[U8](builtin-U8.md) val\] val

---

### program_data
<span class="source-link">[[Source]](src/appdirs/known_folders.md#L43)</span>


The file system directory that contains application data for all users.
A typical path is C:\Documents and Settings\All Users\Application Data.
This folder is used for application data that is not user specific.
For example, an application can store a spell-check dictionary,
a database of clip art, or a log file in the CSIDL_COMMON_APPDATA folder.
This information will not roam and is available to anyone using the computer.

FOLDERID_ProgramData
62AB5D82-FDC1-4DC3-A9DD-070D1D495D97


```pony
fun box program_data()
: Array[U8 val] val
```

#### Returns

* [Array](builtin-Array.md)\[[U8](builtin-U8.md) val\] val

---

### eq
<span class="source-link">[[Source]](src/appdirs/known_folders.md#L11)</span>


```pony
fun box eq(
  that: KnownFolderIds val)
: Bool val
```
#### Parameters

*   that: [KnownFolderIds](appdirs-KnownFolderIds.md) val

#### Returns

* [Bool](builtin-Bool.md) val

---

### ne
<span class="source-link">[[Source]](src/appdirs/known_folders.md#L11)</span>


```pony
fun box ne(
  that: KnownFolderIds val)
: Bool val
```
#### Parameters

*   that: [KnownFolderIds](appdirs-KnownFolderIds.md) val

#### Returns

* [Bool](builtin-Bool.md) val

---

