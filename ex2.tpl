Value PORT_NAME (\S+)
Value STATUS (\w+)
Value VLAN (\d+)
Value DUPLEX (\w+)
Value SPEED (\w+)
Value PORT_TYPE (\S+)

Start
 ^Port.*Type\s$$ -> Port

Port
 ^${PORT_NAME}\s+${STATUS}\s+${VLAN}\s+${DUPLEX}\s+${SPEED}\s+${PORT_TYPE} -> Record 

EOF
