import textfsm

output = []

template_file = "ex2.tpl"
template = open(template_file)

data_file = open("show_interface_status.txt")
data = data_file.read()
data_file.close()

parser = textfsm.TextFSM(template)
parsed_data = parser.ParseText(data)

for intf in parsed_data:
    temp_dict = {}
    temp_dict['DUPLEX']=intf[3]
    temp_dict['PORT_NAME']=intf[0]
    temp_dict['PORT_TYPE']=intf[5]
    temp_dict['SPEED']=intf[4]
    temp_dict['STATUS']=intf[1]
    temp_dict['VLAN']=intf[2]
    output.append(temp_dict)

print(output)
template.close()

# is port name, status, vlan, duplex, speed, port type
# todo duplex, port name, port type, speed, status, vlan

