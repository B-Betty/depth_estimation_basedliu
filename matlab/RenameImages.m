function RenameImages(fileReg, prefix, startNum) %fileRegΪ·������ʽ��prefixΪ�ļ�ǰ׺��startNumΪ��ʼ�ļ����
    fileNames = dir(fileReg);
    len=length(fileNames);
    for i = 1:len
        lastName = fileNames(i).name;
        newName = [];
        if mod(i,2) == 0
             newName = [prefix, num2str(startNum), '_depth.png'];
             startNum = startNum + 1;
        else
            newName = [prefix, num2str(startNum), '.png'];
        end
        
        command = ['rename',' ',lastName,' ',newName];
        status = dos(command);
        if status == 0
            disp([lastName, ' �ѱ�������Ϊ ', newName]);
        else
            disp([lastName, ' ������ʧ��!']);
        end
    end
end