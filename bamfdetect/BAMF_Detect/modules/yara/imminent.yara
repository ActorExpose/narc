rule new_imminent {
  meta:
    description = "Imminent Monitor RAT"
    author = "Paul Melson @pmelson"
  strings:
    $ = "Connecting to {0}:{1}..." wide
    $ = "\\Imminent\\Plugins\\" wide
    $ = "-o {0} -u {1} -p {2} -a scrypt -I {3} -T {4}" wide
  condition:
    all of them
}
