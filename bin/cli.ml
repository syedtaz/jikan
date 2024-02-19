module Cli = struct
  open Core.Command.Param

  let main =
    Command.basic
      ~summary:"Simple OCaml Network Time Protocol (ntpv4) client. [WIP]"
      ~readme:(fun () -> "Simple OCaml Network Time Protocol (ntpv4) client. [WIP]")
      (anon ("address" %: string) >>| fun s () -> Format.printf "Address: %s\n" s)
  ;;
end

include Cli
