# LLVM CLI Options to Enable Silhouette Passes

## List of CLI Options

1. `-enable-arm-silhouette-str2strt`: This option enables the Store Promotion
   pass.
2. `-enable-arm-silhouette-shadowstack`: This option enables the Shadow Stack
   pass.
3. `-enable-arm-silhouette-cfi`: This option enables the CFI pass.
4. `-enable-arm-silhouette-invert`: This option enables Silhouette-Invert.
   Note that `-enable-arm-silhouette-shadowstack` and
   `-enable-arm-silhouette-cfi` need to be specified as well in order for
   Silhouette-Invert to take effect.
5. `-enable-arm-silhouette-sfi=xxx`: This option takes a argument (`none`,
   `selective`, or `full`) to indicate to what degree we want to use SFI.
   The default value is `none`.
6. `-arm-silhouette-shadowstack-offset=xxx`: This option takes a integer
   argument to indicate the shadow stack offset we want to use.  The default
   value is `4092`.

## Combinations

### Store Promotion Only

* If not using LTO, add the following option(s) to `CFLAGS`:
  * `-mllvm -enable-arm-silhouette-str2strt`
* If using LTO, add the following option(s) to `LDFLAGS`:
  * `-Wl,-mllvm,-enable-arm-silhouette-str2strt`

### Shadow Stack Only

* If not using LTO, add the following option(s) to `CFLAGS`:
  * `-mllvm -enable-arm-silhouette-shadowstack`
  * `-mllvm -arm-silhouette-shadowstack=8184` for programs requiring a larger
    shadow stack
* If using LTO, add the following option(s) to `LDFLAGS`:
  * `-Wl,-mllvm,-enable-arm-silhouette-shadowstack`
  * `-Wl,-mllvm,-arm-silhouette-shadowstack=8184` for programs requiring a
    larger shadow stack

### CFI Only

* If not using LTO, add the following option(s) to `CFLAGS`:
  * `-mllvm -enable-arm-silhouette-cfi`
* If using LTO, add the following option(s) to `LDFLAGS`:
  * `-Wl,-mllvm,-enable-arm-silhouette-cfi`

### Silhouette

* If not using LTO, add the following option(s) to `CFLAGS`:
  * `-mllvm -enable-arm-silhouette-str2strt`
  * `-mllvm -enable-arm-silhouette-shadowstack`
  * `-mllvm -enable-arm-silhouette-cfi`
  * `-mllvm -arm-silhouette-shadowstack=8184` for programs requiring a larger
    shadow stack
* If using LTO, add the following option(s) to `LDFLAGS`:
  * `-Wl,-mllvm,-enable-arm-silhouette-str2strt`
  * `-Wl,-mllvm,-enable-arm-silhouette-shadowstack`
  * `-Wl,-mllvm,-enable-arm-silhouette-cfi`
  * `-Wl,-mllvm,-arm-silhouette-shadowstack=8184` for programs requiring a
    larger shadow stack

### Silhouette-Invert

* If not using LTO, add the following option(s) to `CFLAGS`:
  * `-mllvm -enable-arm-silhouette-invert`
  * `-mllvm -enable-arm-silhouette-shadowstack`
  * `-mllvm -enable-arm-silhouette-cfi`
  * `-mllvm -arm-silhouette-shadowstack=8184` for programs requiring a larger
    shadow stack
* If using LTO, add the following option(s) to `LDFLAGS`:
  * `-Wl,-mllvm,-enable-arm-silhouette-invert`
  * `-Wl,-mllvm,-enable-arm-silhouette-shadowstack`
  * `-Wl,-mllvm,-enable-arm-silhouette-cfi`
  * `-Wl,-mllvm,-arm-silhouette-shadowstack=8184` for programs requiring a
    larger shadow stack

### Selective SFI

* If not using LTO, add the following option(s) to `CFLAGS`:
  * `-mllvm -enable-arm-silhouette-str2strt`
  * `-mllvm -enable-arm-silhouette-shadowstack`
  * `-mllvm -enable-arm-silhouette-cfi`
  * `-mllvm -enable-arm-silhouette-sfi=selective`
  * `-mllvm -arm-silhouette-shadowstack=8184` for programs requiring a larger
    shadow stack
* If using LTO, add the following option(s) to `LDFLAGS`:
  * `-Wl,-mllvm,-enable-arm-silhouette-str2strt`
  * `-Wl,-mllvm,-enable-arm-silhouette-shadowstack`
  * `-Wl,-mllvm,-enable-arm-silhouette-cfi`
  * `-Wl,-mllvm,-enable-arm-silhouette-sfi=selective`
  * `-Wl,-mllvm,-arm-silhouette-shadowstack=8184` for programs requiring a
    larger shadow stack

### Full SFI

* If not using LTO, add the following option(s) to `CFLAGS`:
  * `-mllvm -enable-arm-silhouette-shadowstack`
  * `-mllvm -enable-arm-silhouette-cfi`
  * `-mllvm -enable-arm-silhouette-sfi=full`
  * `-mllvm -arm-silhouette-shadowstack=8184` for programs requiring a larger
    shadow stack
* If using LTO, add the following option(s) to `LDFLAGS`:
  * `-Wl,-mllvm,-enable-arm-silhouette-shadowstack`
  * `-Wl,-mllvm,-enable-arm-silhouette-cfi`
  * `-Wl,-mllvm,-enable-arm-silhouette-sfi=full`
  * `-Wl,-mllvm,-arm-silhouette-shadowstack=8184` for programs requiring a
    larger shadow stack
