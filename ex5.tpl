Value DEVICE_ID (\S+)
Value LOCAL_INT (\S+)
Value CAPABILITY (\w+)
Value PORT_ID (\S+)

Start
 ^Device.*Port ID\s+$$ -> GetLLDP

GetLLDP
 ^${DEVICE_ID}\s+${LOCAL_INT}\s+\d+\s+${CAPABILITY}\s+${PORT_ID} -> Record

EOF

# extract the Device ID, Local Intf, Capability, and Port ID
