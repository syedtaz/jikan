module Fields = struct
  type leap_indicator =
    | NoWarning
    | LastMinute61
    | LastMinute59
    | Alarm
  [@@deriving variants]

  type version =
    | NTP0
    | NTP1
    | NTP2
    | NTP3
    | NTP4
  [@@deriving variants]

  type mode =
    | Reserved
    | SymmetricActive
    | SymmetricPassive
    | Client
    | Server
    | Broadcast
    | NTPControlMsg
    | Private
  [@@deriving variants]

  type statum =
    | Unspecified
    | Reference
    | Secondary of int
    | Unreachable
  [@@deriving variants]

  type timestamp = Int64.t
end
