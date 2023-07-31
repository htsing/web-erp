unit UHFReader86_Head;

interface
   Const
    COM1 = 1;
    COM2 = 2;
    COM3 = 3;
    COM4 = 4;
    COM5 = 5;
    COM6 = 6;
    COM7 = 7;
    COM8 = 8;
    COM9 = 9;
    COM10 = 10;


    OK			    	= $00;

    NoElectronicTag     = $0e;
    OperationError      = $0f;



    OtherError             = $00;//��������
    MemoryOutPcNotSupport  = $03;//�洢�����޻򲻱�֧�ֵ�PCֵ
    MemoryLocked           = $04;//�洢������
    NoPower                = $0b;//��Դ����
    NotSpecialError        = $0f;//���ض�����


    CmdNotIdentify                = $02;
    OperationNotSupport_          = $03;
    UnknownError                  = $0f;


    ReturnEarly            = $0E;//ѯ��ʱ�����ǰ����
  	TimeOut                = $0B;// ָ����ѯ��ʱ�����
  	MoreData               = $0D; //������Ϣ֮�󣬻�����Ϣ
  	MCUFull                = $0C;// ��дģ��洢�ռ�����
  	AbnormalCommunication  = $02;
//  	PasswordError          = $03;//�����������
//  	NoTagOperation         = $04;
//  	ParameterError         = $FF;


    
    CommunicationErr = $30;
    RetCRCErr        = $31;
    RetDataErr       = $32;    //���ݳ����д���
    CommunicationBusy= $33;
    ExecuteCmdBusy   = $34;
    ComPortOpened    = $35;
    ComPortClose     = $36;
    InvalidHandle    = $37;
    InvalidPort      = $38;
    RecmdErr         = $EE;    //����ָ�����



    InventoryReturnEarly_G2   = $01;//ѯ��ʱ�����ǰ����
  	InventoryTimeOut_G2       = $02;// ָ����ѯ��ʱ�����
  	InventoryMoreData_G2      = $03; //������Ϣ֮�󣬻�����Ϣ
    ReadermoduleMCUFull_G2    = $04;// ��дģ��洢�ռ�����
  	AccessPasswordError          = $05;//�����������
 //   AccessPasswordErrorWriteALittle =$06;   //�����������ֻ�в�������д��
 //   PoorCommunicationWriteALittle =$07;//ͨѶ������ֻ�в�������д��
 //   TagReturnErrorWriteALittle=$08; //���ӱ�ǩ���ش�����룬��ֻд���˲�������
    DestroyPasswordError=$09; // �����������
    DestroyPasswordCannotZero=$0a; //�������벻��Ϊȫ0
    TagNotSupportCMD=$0b;// ���ӱ�ǩ��֧�ָ�����
    AccessPasswordCannotZero=$0c;// �Ը�����������벻��Ϊȫ0
    TagProtectedCannotSetAgain=$0d;//���ӱ�ǩ�Ѿ��������˶������������ٴ�����
    TagNoProtectedDonotNeedUnlock=$0e;//  ���ӱ�ǩû�б����ö�����������Ҫ����
  //  PoorCommunicationWriteFail=$0f;//ͨѶ����, д��ʧ��
    ByteLockedWriteFail=$10;//  ���ֽڿռ䱻������д��ʧ��
    CannotLock=$11;// ��������
    LockedCannotLockAgain=$12;// �Ѿ������������ٴ�����
    ParameterSaveFailCanUseBeforeNoPower=$13;// ��������ʧ��,�����õ�ֵ�ڶ�дģ��ϵ�ǰ��Ч
    CannotAdjust=$14;//�޷�����
    InventoryReturnEarly_6B=$15;// ѯ��ʱ�����ǰ����
    InventoryTimeOut_6B=$16;//ָ����ѯ��ʱ�����
    InventoryMoreData_6B=$17;// ������Ϣ֮�󣬻�����Ϣ
    ReadermoduleMCUFull_6B=$18;// ��дģ��洢�ռ�����
    NotSupportCMDOrAccessPasswordCannotZero=$19;  //���Ӳ�֧�ָ�������߷������벻��Ϊ0
    CMDExecuteErr=$F9;// ����ִ�г���
    GetTagPoorCommunicationCannotOperation=$FA; //�е��ӱ�ǩ����ͨ�Ų������޷�����
    NoTagOperation=$FB; //�޵��ӱ�ǩ�ɲ���
    TagReturnErrorCode=$FC;// ���ӱ�ǩ���ش������
    CMDLengthWrong=$FD;// ����ȴ���
    IllegalCMD=$FE;//���Ϸ�������
    ParameterError=$FF;// ��������









  //	NoTagOperation         = $04;
  //	ParameterError         = $FF;

  //   	AbnormalCommunication  = $02;


    Function UHFReader86_GetErrorCodeDesc(errorCode : Byte) : String;
    Function UHFReader86_GetReturnCodeDesc(retCode : Byte) : String;
implementation


Function UHFReader86_GetErrorCodeDesc(errorCode : Byte) : String;
begin
    result := '';
    case errorCode of
        OtherError            : result := '�������� ȫ����׽δ���������븲�ǵĴ���';
        MemoryOutPcNotSupport : result := '�洢�����޻򲻱�֧�ֵ�PCֵ �涨�洢λ�ò����ڻ��ǩ��֧��PCֵ';
        MemoryLocked          : result := '�洢������ �洢λ�������������������Ҳ���д��';
        NoPower               : result := '��Դ���� ��ǩ��Դ���㣬�޷�ִ�д洢д�����';
        NotSpecialError       : result := '���ض����� ��ǩ��֧���ض��������';

    end;
end;

Function UHFReader86_GetReturnCodeDesc(retCode : Byte) : String;
begin
    result := '';
    case retCode of
        InventoryReturnEarly_G2               : result := 'ѯ��ʱ�����ǰ����';
        InventoryTimeOut_G2                   : result := 'ָ����ѯ��ʱ�����';
        InventoryMoreData_G2                  : result := '������Ϣ֮�󣬻�����Ϣ';
        ReadermoduleMCUFull_G2                : result := '��дģ��洢�ռ�����';
        AccessPasswordError                   : result := '�����������';
      //  AccessPasswordErrorWriteALittle       : result := '�����������ֻ�в�������д��';
      //  PoorCommunicationWriteALittle         : result := 'ͨѶ������ֻ�в�������д��';
     //   TagReturnErrorWriteALittle            : result := '���ӱ�ǩ���ش�����룬��ֻд���˲�������';
        DestroyPasswordError                  : result := '�����������';
        DestroyPasswordCannotZero             : result := '�������벻��Ϊȫ0';
        TagNotSupportCMD                      : result := '���ӱ�ǩ��֧�ָ�����';
        AccessPasswordCannotZero              : result := '�Ը�����������벻��Ϊȫ0';
        TagProtectedCannotSetAgain            : result := '���ӱ�ǩ�Ѿ��������˶������������ٴ�����';
        TagNoProtectedDonotNeedUnlock         : result := '���ӱ�ǩû�б����ö�����������Ҫ����';
     //   PoorCommunicationWriteFail            : result := 'ͨѶ����, д��ʧ��';
        ByteLockedWriteFail                   : result := '���ֽڿռ䱻������д��ʧ��';
        CannotLock                            : result := '��������';
        LockedCannotLockAgain                 : result := '�Ѿ������������ٴ�����';
        ParameterSaveFailCanUseBeforeNoPower  : result := '��������ʧ��,�����õ�ֵ�ڶ�дģ��ϵ�ǰ��Ч';
        CannotAdjust                          : result := '�޷�����';
        InventoryReturnEarly_6B               : result := 'ѯ��ʱ�����ǰ����';
        InventoryTimeOut_6B                   : result := 'ָ����ѯ��ʱ�����';
        InventoryMoreData_6B                  : result := '������Ϣ֮�󣬻�����Ϣ';
        ReadermoduleMCUFull_6B                : result := '��дģ��洢�ռ�����';
        NotSupportCMDOrAccessPasswordCannotZero : result := '���Ӳ�֧�ָ�������߷������벻��Ϊ0';
        GetTagPoorCommunicationCannotOperation: result := '�е��ӱ�ǩ����ͨ�Ų������޷�����';
        NoTagOperation                        : result := '�޵��ӱ�ǩ�ɲ���';
        TagReturnErrorCode                    : result := '���ӱ�ǩ���ش������';
        CMDLengthWrong                        : result := '����ȴ���';
        IllegalCMD                            : result := '���Ϸ�������';
        ParameterError                        : result := '��������';


        RecmdErr            : result := '����ָ�����';
        CommunicationErr    : result := 'ͨѶ����';
        RetCRCErr           : result := 'CRCУ�����';
        RetDataErr          : result := '�������ݳ����д���';
        CommunicationBusy   : result := 'ͨѶ��æ���豸����ִ������ָ��';
        ExecuteCmdBusy      : result := '��æ��ָ������ִ��';
        ComPortOpened       : result := '�˿��Ѵ�';
        ComPortClose        : result := '�˿��ѹر�';
        InvalidHandle       : result := '��Ч���';
        InvalidPort         : result := '��Ч�˿�';
        $F8         : result := '�������Ӽ�����';
    end;
end;


end.
