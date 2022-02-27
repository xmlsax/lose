import sys, random

allchar = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz =+-_[]{}:;,.<>?/1234567890!@#$%^&*()~`'
tmp_str = 'print("' + ''.join(random.choice(allchar) for i in range(1024)) + '"*0, end="")'
tmp_str = bytes(tmp_str, 'ascii')
f = open(sys.argv[1], 'rb')
con = f.read().replace(b'_RPL_HERE_USELESS_CODE_', tmp_str)
f.close()
f = open(sys.argv[2], 'wb')
f.write(con)
f.close()
