Value MAC_ADDR (\S+)
Value ADDR (\S+)
Value NAME (\S+)
Value INTERFACE (\S+)

Start
 ^MAC.*Flags$$ -> GetArp

GetArp
 ^${MAC_ADDR}\s+${ADDR}\s+${NAME}\s+${INTERFACE} -> Record

EOF

# Extract the following fields into tabular data: MAC Address, Address, Name, Interface.
