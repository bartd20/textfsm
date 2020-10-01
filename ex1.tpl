Value PORT_NAME (\S+)

Start
 ^Port.*Type\s$$ -> Port

Port
 ^${PORT_NAME}\s+ -> Record

EOF
