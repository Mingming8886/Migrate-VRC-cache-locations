@echo off
echo ------
echo �ڣ�
echo ------
echo Github��https://github.com/Mingming8886/Migrate-VRC-cache-locations
echo ע��:�ò�����ɾ��VRC�����л���
echo  ֮ǰ���ع�����Ʒ�������¼���
echo ���ҳ��򽫻ὫVRCHTAĬ�ϵĴ洢���ض�����D�̵�VRChatĿ¼��
echo PS�������Ǹ�����VRCHAT�鷳������һ����������
echo �Ƿ�������س�=ȷ�ϣ��رճ���=ȡ��
PAUSE
net session >nul 2>&1
if %errorLevel% == 0 (
    rem Success: [��־] ȷ�Ϲ���ԱȨ�޳ɹ�!
) else (
    echo [��־] �����޹���Ա������ȡ�����в���!
    echo        �����ѱ�ȡ��!
    echo.
    echo [��־]:  ���Ҽ��Թ���Ա������иýű���
    echo.
    pause
    exit
)


set /p dpath=������Ŀ��·�������磺D:\Temp �����߻��Զ����������·���´���VRChat_Cache�ļ��в����������ӣ�:
echo �������·���� %dpath% 
pause
md %dpath%\VRChat_Cache
echo �����ļ�......
echo=
xcopy %APPDATA%\..\LocalLow\VRChat %dpath%\VRChat_Cache /s /e /g /h
echo ɾ��ԭĿ¼
echo=
rd /s /q %APPDATA%\..\LocalLow\VRChat
echo ����������
echo=
mklink /d %APPDATA%\..\LocalLow\VRChat %dpath%\VRChat_Cache
echo ����ת�����
echo=
pause