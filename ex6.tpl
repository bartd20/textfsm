Value Filldown LOCAL_AS (\d+)
Value Filldown ROUTER_ID (\S+)
Value NEIGHBOR (\S+)
Value REMOTE_AS (\d+)
Value UP_DOWN (\S+)
Value STATE (\S+)

Start
 ^BGP router identifier ${ROUTER_ID}, local AS number ${LOCAL_AS}$$ -> GetNeighborsTitle

GetNeighborsTitle
 ^Neighbor.*State/PfxRcd$$ -> GetNeighbors

GetNeighbors
 ^${NEIGHBOR}\s+\d+\s+${REMOTE_AS}\s+\d+\s+\d+\s+\d+\s+\d+\s+\d+\s+${UP_DOWN}\s+${STATE}$$ -> Record

EOF

# extract the following fields: Neighbor, Remote AS, Up_Down, and State_PrefixRcvd. Also include the Local AS and the BGP Router ID in each row of the tabular output (hint: use filldown for this). Note, in order to simplify this problem only worry about the data shown in the output (in other words, don't worry about all possible values that could be present in the output).
#Second hint: remember there is an implicit 'EOF -> Record' at the end of the template (by default).
