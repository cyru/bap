open Bap_types.Std
open Image_internal_std
open Bap_disasm

type project = {
  arch    : arch;
  program : disasm;
  symbols : string table;
  memory  : mem;
  annots  : (string * string) memmap;
}

val register : (project -> project) -> unit

val registered : unit -> (project -> project) list
