Value PORT_NAME (\S+)
Value LINE_STATUS (\w+)
Value ADMIN_STATE (\w+)
Value MAC_ADDR (\S+)
Value MTU (\d+)
Value DUPLEX (\S+)
Value SPEED_NUM (\d+)
Value SPEED_UNIT (\S+)

Start
 ^${PORT_NAME} is ${LINE_STATUS}
 ^admin state is ${ADMIN_STATE}
 ^\s+Hardware:  Ethernet, address: ${MAC_ADDR}
 ^\s+MTU ${MTU}
 ^\s+${DUPLEX}-duplex, ${SPEED_NUM} ${SPEED_UNIT} -> Record

EOF

# extract the interface name, line status, admin state, MAC address, MTU, duplex, and speed


