package com.UHF.scanlable;

import java.sql.Date;
import java.text.SimpleDateFormat;

import com.UHF.scanlable.R;
import com.rfid.trans.ReaderParameter;
import com.rfid.trans.UHFLib;
import android.app.Activity;
import android.media.SoundPool;
import android.os.Bundle;
import android.os.Handler;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.Spinner;
import android.widget.TextView;

public class ScanView extends Activity implements OnClickListener{
	
	private TextView tvVersion;
	private TextView tvResult;
	private Spinner tvpowerdBm;
	private Spinner tvBeep;
	
	private Button bSetting;
	private Button bRead;
	
	private Button paramRead;
	private Button paramSet;
	
	CheckBox Ant1;
	CheckBox Ant2;
	CheckBox Ant3;
	CheckBox Ant4;
	private int soundid;
	private int tty_speed = 57600;
	private byte addr = (byte) 0xff; 
	private String[] strBand =new String[5]; 
    private String[] strmaxFrm =null; 
    private String[] strminFrm =null; 
    Spinner spBand;
    Spinner spmaxFrm;
	Spinner spminFrm;
	
	Spinner spqvalue;
	Spinner spsession;
	Spinner sptidaddr;
	Spinner sptidlen;
	Spinner sptime;
	Button Setparam;
	Button Getparam;
	private ArrayAdapter<String> spada_Band; 
    private ArrayAdapter<String> spada_maxFrm; 
    private ArrayAdapter<String> spada_minFrm; 
    
    private ArrayAdapter<String> spada_qvalue; 
    private ArrayAdapter<String> spada_session; 
    private ArrayAdapter<String> spada_tidaddr; 
    private ArrayAdapter<String> spada_tidlen; 
	private static final String TAG = "SacnView";
	
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		// TODO Auto-generated method stub  properties
		super.onCreate(savedInstanceState);	
		setContentView(R.layout.scan_view);
		initView();
	}
	
	private void initView(){
		
		
		tvVersion = (TextView)findViewById(R.id.version);
		tvResult = (TextView)findViewById(R.id.param_result);
		tvpowerdBm = (Spinner)findViewById(R.id.power_spinner);
		ArrayAdapter<CharSequence> adapter3 =  ArrayAdapter.createFromResource(this, R.array.Power_select, android.R.layout.simple_spinner_item);
		adapter3.setDropDownViewResource(android.R.layout.simple_spinner_dropdown_item);
		tvpowerdBm.setAdapter(adapter3); 
		tvpowerdBm.setSelection(30, true);
		
		tvBeep = (Spinner)findViewById(R.id.beep_spinner);
		ArrayAdapter<CharSequence> adapter4 =  ArrayAdapter.createFromResource(this, R.array.beep_select, android.R.layout.simple_spinner_item);
		adapter4.setDropDownViewResource(android.R.layout.simple_spinner_dropdown_item);
		tvBeep.setAdapter(adapter4); 
		tvBeep.setSelection(0, true);
		
		Ant1 = (CheckBox)this.findViewById(R.id.checkAnt1);
	    Ant2 = (CheckBox)this.findViewById(R.id.checkAnt2);
	    Ant3 = (CheckBox)this.findViewById(R.id.checkAnt3);
	    Ant4 = (CheckBox)this.findViewById(R.id.checkAnt4);
		
		bSetting = (Button)findViewById(R.id.pro_setting);
		bRead = (Button)findViewById(R.id.pro_read);
		paramRead = (Button)findViewById(R.id.ivt_read);
		paramSet = (Button)findViewById(R.id.ivt_setting);
		bSetting.setOnClickListener(this);
		bRead.setOnClickListener(this);
		paramRead.setOnClickListener(this);
		paramSet.setOnClickListener(this);
		////////////频锟斤拷选锟斤拷
		strBand[0]="Chinese band2";
		strBand[1]="US band";
		strBand[2]="Korean band";
		strBand[3]="EU band";
		strBand[4]="Chinese band1";
		
		spBand=(Spinner)findViewById(R.id.band_spinner);  
		spada_Band = new ArrayAdapter<String>(ScanView.this,  
	             android.R.layout.simple_spinner_item, strBand);  
		spada_Band.setDropDownViewResource(android.R.layout.simple_spinner_dropdown_item);  
		spBand.setAdapter(spada_Band);  
		spBand.setSelection(1,false); 
		SetFre(2);////锟斤拷始锟斤拷频锟斤拷
		 // 锟斤拷锟絊pinner锟铰硷拷锟斤拷锟斤拷  
		spBand.setOnItemSelectedListener(new Spinner.OnItemSelectedListener() {  
        public void onItemSelected(AdapterView<?> arg0, View arg1,  
                int arg2, long arg3) {  
            // TODO Auto-generated method stub  
            // 锟斤拷锟斤拷锟斤拷示锟斤拷前选锟斤拷锟斤拷锟� 
            arg0.setVisibility(View.VISIBLE);  
            if(arg2==0)SetFre(1);
            if(arg2==1)SetFre(2);
            if(arg2==2)SetFre(3);
            if(arg2==3)SetFre(4);
            if(arg2==4)SetFre(8);
            //选锟斤拷默锟斤拷值锟斤拷锟斤拷执锟斤拷  
        }  
        public void onNothingSelected(AdapterView<?> arg0) {  
            // TODO Auto-generated method stub  
        	}  
		});  
		
		spqvalue=(Spinner)findViewById(R.id.qvalue_spinner);  
		ArrayAdapter<CharSequence> adapter =  ArrayAdapter.createFromResource(this, R.array.men_q, android.R.layout.simple_spinner_item);
		adapter.setDropDownViewResource(android.R.layout.simple_spinner_dropdown_item);
		spqvalue.setAdapter(adapter); 
		spqvalue.setSelection(4, true);
		
		
		spsession=(Spinner)findViewById(R.id.session_spinner);  
		ArrayAdapter<CharSequence> adapter1 =  ArrayAdapter.createFromResource(this, R.array.men_s, android.R.layout.simple_spinner_item);
		adapter1.setDropDownViewResource(android.R.layout.simple_spinner_dropdown_item);
		spsession.setAdapter(adapter1); 
		spsession.setSelection(1, true);
		
		sptidaddr=(Spinner)findViewById(R.id.tidptr_spinner);  
		sptidlen=(Spinner)findViewById(R.id.tidlen_spinner);  
		ArrayAdapter<CharSequence> adapter2 =  ArrayAdapter.createFromResource(this, R.array.men_tid, android.R.layout.simple_spinner_item);
		adapter2.setDropDownViewResource(android.R.layout.simple_spinner_dropdown_item);
		sptidaddr.setAdapter(adapter2); 
		sptidaddr.setSelection(0, true);
		sptidlen.setAdapter(adapter2); 
		sptidlen.setSelection(0, true);
		
		
		sptime = (Spinner)findViewById(R.id.time_spinner);   
		ArrayAdapter<CharSequence> adapter5 =  ArrayAdapter.createFromResource(this, R.array.men_time, android.R.layout.simple_spinner_item);
		adapter5.setDropDownViewResource(android.R.layout.simple_spinner_dropdown_item);
		sptime.setAdapter(adapter5); 
		sptime.setSelection(0, true);
	}
	
	
	
	@Override
	public void onClick(View view) {
		try{
			if(view == paramRead)
			{
				ReaderParameter param = Reader.rrlib.GetInventoryPatameter();
				sptidlen.setSelection(param.TidLen, true);
				sptidaddr.setSelection(param.TidPtr, true);
				spqvalue.setSelection(param.QValue,true);
				sptime.setSelection(param.ScanTime-1,true);
				int sessionindex = param.Session;
				if(sessionindex==255) sessionindex=4;
				spsession.setSelection(sessionindex,true);
				Reader.writelog(getString(R.string.get_success),tvResult);
			}
			else if(view == paramSet)
			{
				ReaderParameter param = Reader.rrlib.GetInventoryPatameter();
				param.TidLen = sptidlen.getSelectedItemPosition();
				param.TidPtr = sptidaddr.getSelectedItemPosition();
				param.QValue = spqvalue.getSelectedItemPosition();
				param.ScanTime = sptime.getSelectedItemPosition()+1;
				int Session = spsession.getSelectedItemPosition();
				if(Session==4)Session=255;
				param.Session = Session;
				Reader.rrlib.SetInventoryPatameter(param);
				Reader.writelog(getString(R.string.set_success),tvResult);
			}
			else if (view == bSetting){
				
				int MaxFre=0;
				int MinFre=0;
				int Power= tvpowerdBm.getSelectedItemPosition();
				int fband = spBand.getSelectedItemPosition();
				int band=0;
				if(fband==0)band=1;
				if(fband==1)band=2;
				if(fband==2)band=3;
				if(fband==3)band=4;
				if(fband==4)band=8;
				int Frequent= spminFrm.getSelectedItemPosition();
				MinFre = Frequent;
				Frequent= spmaxFrm.getSelectedItemPosition();
				MaxFre = Frequent;
				int Antenna=0;
				if(Ant1.isChecked())
				{Antenna |= 0x01;}
				if(Ant2.isChecked())
				{Antenna |= 0x02;}
				if(Ant3.isChecked())
				{Antenna |= 0x04;}
				if(Ant4.isChecked())
				{Antenna |= 0x08;}
				
				
				int BeepEn = tvBeep.getSelectedItemPosition();
				String temp="";
				int result = Reader.rrlib.SetRfPower(Power);
				if(result!=0)
				{
					temp=getString(R.string.power_error);
				}
				result = Reader.rrlib.SetBeepNotification(BeepEn);
				if(result!=0)
				{
					if(temp=="")
						temp=getString(R.string.beep_error);
					else
						temp+=(",\r\n"+getString(R.string.beep_error));
				}
				result = Reader.rrlib.SetRegion(band,MaxFre,MinFre);
				if(result!=0)
				{
					if(temp=="")
					temp=getString(R.string.frequent_error);
					else
						temp+=(",\r\n"+getString(R.string.frequent_error));
				}
				result = Reader.rrlib.SetAntenna((byte)Antenna);
				if(result!=0)
				{
					if(temp=="")
					temp=getString(R.string.antenna_error);
					else
						temp+=(",\r\n"+getString(R.string.antenna_error));
				}
				if(temp!="")
				{
					Reader.writelog(temp,tvResult);
				}
				else
				{
					Reader.writelog(getString(R.string.set_success),tvResult);
				}
			}else if (view == bRead){
				byte[]Version=new byte[2];
				byte[]Power=new byte[1];
				byte[]band=new byte[1];
				byte[]MaxFre=new byte[1];
				byte[]MinFre=new byte[1];
				byte[]BeepEn=new byte[1];
				byte[]Ant=new byte[1];
				int result = Reader.rrlib.GetUHFInformation(Version, Power, band, MaxFre, MinFre, BeepEn, Ant);
				if(result==0)
				{
					String hvn = String.valueOf(Version[0]);
					if(hvn.length()==1)hvn="0"+hvn;
					String lvn = String.valueOf(Version[1]);
					if(lvn.length()==1)lvn="0"+lvn;
					tvVersion.setText(hvn+"."+lvn);
					tvpowerdBm.setSelection(Power[0],true);
					SetFre(band[0]);
					int bandindex = band[0];
					if(bandindex ==8)
					{
						bandindex=bandindex-4;
					}
					else
					{
						bandindex=bandindex-1;
					}
					spBand.setSelection(bandindex,true);
					spminFrm.setSelection(MinFre[0],true);
					spmaxFrm.setSelection(MaxFre[0],true);
					tvBeep.setSelection(BeepEn[0], true);
					
					int AntInfo=Ant[0]&255;
					if((AntInfo & 0x01)==0x01)
					{Ant1.setChecked(true);}
					else
					{Ant1.setChecked(false);}
					
					if((AntInfo & 0x02)==0x02)
					{Ant2.setChecked(true);}
					else
					{Ant2.setChecked(false);}
					
					if((AntInfo & 0x04)==0x04)
					{Ant3.setChecked(true);}
					else
					{Ant3.setChecked(false);}
					
					if((AntInfo & 0x08)==0x08)
					{Ant4.setChecked(true);}
					else
					{Ant4.setChecked(false);}
					
					Reader.writelog(getString(R.string.get_success),tvResult);
				}
				else
				{
					Reader.writelog(getString(R.string.get_failed),tvResult);
				}
			}
		}catch(Exception ex)
		{}
	}
	
	
	private void SetFre(int m)
	{
		if(m==1){ 
		    strmaxFrm=new String[20];
         	strminFrm=new String[20];
         	for(int i=0;i<20;i++){
         		String temp="";
         		float values=(float) (920.125 + i * 0.25);
         		temp=String.valueOf(values)+"MHz";
         		strminFrm[i]=temp;
         		strmaxFrm[i]=temp;
         	}
         	spmaxFrm=(Spinner)findViewById(R.id.max_spinner);  
         	spada_maxFrm = new ArrayAdapter<String>(ScanView.this,  
                      android.R.layout.simple_spinner_item, strmaxFrm);  
         	spada_maxFrm.setDropDownViewResource(android.R.layout.simple_spinner_dropdown_item);  
         	spmaxFrm.setAdapter(spada_maxFrm);  
         	spmaxFrm.setSelection(19,false);
         	
         	spminFrm=(Spinner)findViewById(R.id.min_spinner);  
         	spada_minFrm = new ArrayAdapter<String>(ScanView.this,  
                      android.R.layout.simple_spinner_item, strminFrm);  
         	spada_minFrm.setDropDownViewResource(android.R.layout.simple_spinner_dropdown_item);  
         	spminFrm.setAdapter(spada_minFrm);  
         	spminFrm.setSelection(0,false);
     }else if(m==2){
     	strmaxFrm=new String[50];
     	strminFrm=new String[50];
     	for(int i=0;i<50;i++){
     		String temp="";
     		float values=(float) (902.75 + i * 0.5);
     		temp=String.valueOf(values)+"MHz";
     		strminFrm[i]=temp;
     		strmaxFrm[i]=temp;
     	}
     	spmaxFrm=(Spinner)findViewById(R.id.max_spinner);  
     	spada_maxFrm = new ArrayAdapter<String>(ScanView.this,  
                  android.R.layout.simple_spinner_item, strmaxFrm);  
     	spada_maxFrm.setDropDownViewResource(android.R.layout.simple_spinner_dropdown_item);  
     	spmaxFrm.setAdapter(spada_maxFrm);  
     	spmaxFrm.setSelection(49,false);
     	
     	spminFrm=(Spinner)findViewById(R.id.min_spinner);  
     	spada_minFrm = new ArrayAdapter<String>(ScanView.this,  
                  android.R.layout.simple_spinner_item, strminFrm);  
     	spada_minFrm.setDropDownViewResource(android.R.layout.simple_spinner_dropdown_item);  
     	spminFrm.setAdapter(spada_minFrm);  
     	spminFrm.setSelection(0,false);
     }else if(m==3){
      	strmaxFrm=new String[32];
      	strminFrm=new String[32];
      	for(int i=0;i<32;i++){
      		String temp="";
      		float values=(float) (917.1 + i * 0.2);
      		temp=String.valueOf(values)+"MHz";
      		strminFrm[i]=temp;
      		strmaxFrm[i]=temp;
      	}
      	spmaxFrm=(Spinner)findViewById(R.id.max_spinner);  
      	spada_maxFrm = new ArrayAdapter<String>(ScanView.this,  
                   android.R.layout.simple_spinner_item, strmaxFrm);  
      	spada_maxFrm.setDropDownViewResource(android.R.layout.simple_spinner_dropdown_item);  
      	spmaxFrm.setAdapter(spada_maxFrm);  
      	spmaxFrm.setSelection(31,false);
      	
      	spminFrm=(Spinner)findViewById(R.id.min_spinner);  
      	spada_minFrm = new ArrayAdapter<String>(ScanView.this,  
                   android.R.layout.simple_spinner_item, strminFrm);  
      	spada_minFrm.setDropDownViewResource(android.R.layout.simple_spinner_dropdown_item);  
      	spminFrm.setAdapter(spada_minFrm);  
      	spminFrm.setSelection(0,false);
      }else if(m==4){
       	strmaxFrm=new String[15];
       	strminFrm=new String[15];
       	for(int i=0;i<15;i++){
       		String temp="";
       		float values=(float) (865.1 + i * 0.2);
       		temp=String.valueOf(values)+"MHz";
       		strminFrm[i]=temp;
       		strmaxFrm[i]=temp;
       	}
       	spmaxFrm=(Spinner)findViewById(R.id.max_spinner);  
       	spada_maxFrm = new ArrayAdapter<String>(ScanView.this,  
                    android.R.layout.simple_spinner_item, strmaxFrm);  
       	spada_maxFrm.setDropDownViewResource(android.R.layout.simple_spinner_dropdown_item);  
       	spmaxFrm.setAdapter(spada_maxFrm);  
       	spmaxFrm.setSelection(14,false);
       	
       	spminFrm=(Spinner)findViewById(R.id.min_spinner);  
       	spada_minFrm = new ArrayAdapter<String>(ScanView.this,  
                    android.R.layout.simple_spinner_item, strminFrm);  
       	spada_minFrm.setDropDownViewResource(android.R.layout.simple_spinner_dropdown_item);  
       	spminFrm.setAdapter(spada_minFrm);  
       	spminFrm.setSelection(0,false);
       }else if(m==8){
		    strmaxFrm=new String[20];
         	strminFrm=new String[20];
         	for(int i=0;i<20;i++){
         		String temp="";
         		float values=(float) (840.125 + i * 0.25);
         		temp=String.valueOf(values)+"MHz";
         		strminFrm[i]=temp;
         		strmaxFrm[i]=temp;
         	}
         	spmaxFrm=(Spinner)findViewById(R.id.max_spinner);  
         	spada_maxFrm = new ArrayAdapter<String>(ScanView.this,  
                      android.R.layout.simple_spinner_item, strmaxFrm);  
         	spada_maxFrm.setDropDownViewResource(android.R.layout.simple_spinner_dropdown_item);  
         	spmaxFrm.setAdapter(spada_maxFrm);  
         	spmaxFrm.setSelection(19,false);
         	
         	spminFrm=(Spinner)findViewById(R.id.min_spinner);  
         	spada_minFrm = new ArrayAdapter<String>(ScanView.this,  
                      android.R.layout.simple_spinner_item, strminFrm);  
         	spada_minFrm.setDropDownViewResource(android.R.layout.simple_spinner_dropdown_item);  
         	spminFrm.setAdapter(spada_minFrm);  
         	spminFrm.setSelection(0,false);
       }
	}
}
