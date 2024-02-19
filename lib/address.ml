module Address = struct
  open Angstrom

  type 'a t =
    | IPV4 : int * int * int * int -> (int * int * int * int) t
    | IPV6 :
        int * int * int * int * int * int * int * int
        -> (int * int * int * int * int * int * int * int) t
    | IPV6Dual :
        int * int * int * int * (int * int * int * int) t
        -> (int * int * int * int * int * int * int * int) t

  let string_of_t : type a. a t -> string = function
    | IPV4 _ -> "IPV4"
    | IPV6 _ -> "IPV6"
    | IPV6Dual _ -> "IPV6"
  ;;

  let ipv4 =
    let open Angstrom.Let_syntax in
    let octet = any_uint8 <* char '.' in
    let%bind a = octet in
    let%bind b = octet in
    let%bind c = octet in
    let%bind d = any_uint8 in
    return (a, b, c, d)
  ;;
end

include Address
