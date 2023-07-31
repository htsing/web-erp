package com.UHF.scanlable;

import com.UHF.scanlable.R;
import com.rfid.trans.ReaderParameter;
//import com.UHF.scanlable.UHfData.UHfGetData;

import android.R.integer;
import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.ActivityGroup;
import android.content.Intent;
import android.graphics.Color;
import android.media.AudioManager;
import android.media.SoundPool;
import android.os.Bundle;
import android.support.v4.widget.SimpleCursorAdapter.ViewBinder;
import android.util.Log;
import android.view.KeyEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnFocusChangeListener;
import android.view.Window;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemSelectedListener;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.EditText;
import android.widget.RadioButton;
import android.widget.Spinner;
import android.widget.TextView;
import android.widget.Toast;

import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

import java.util.ArrayList;  
import java.util.List; 

public class ReadWriteActivity extends Activity implements OnClickListener, OnItemSelectedListener{
	
	private int mode;
	EditText edENum0;
	int selectedEd = 3;
	int selectedWhenPause = 0;
	
	Spinner c_mem;
	EditText c_wordPtr;
	EditText c_len;
	EditText c_pwd;
	EditText c_ptr;
	TextView tvResult;
	
	EditText b_id;
	EditText b_addr;
	EditText b_num;
	
	EditText content;
	EditText readContent;
	Button rButton;
	Button wButton;
	Button btWriteEPC;
	private ArrayAdapter<String> spada_epc; 
	Spinner spepc;
	private static final int CHECK_W_6B = 0;
	private static final int CHECK_R_6B = 1;
	private static final int CHECK_W_6C = 2;
	private static final int CHECK_R_6C = 3;
	
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		// TODO Auto-generated method stub
		super.onCreate(savedInstanceState);
		setContentView(R.layout.rw_6c);
		initView();
	}
	
	@Override
	protected void onResume() {
		// TODO Auto-generated method stub
		int epcCount = ScanMode.lsTagList.size();
		String[]epcdata = new String[epcCount];
		for(int m=0;m<epcCount;m++)
		{
			ScanMode.InventoryTagMap map = ScanMode.lsTagList.get(m);
			epcdata[m] = map.strEPC;
		}
		if(epcCount>0)
		{
			spada_epc = new ArrayAdapter<String>(ReadWriteActivity.this,  
	                android.R.layout.simple_spinner_item, epcdata);  
			spada_epc.setDropDownViewResource(android.R.layout.simple_spinner_dropdown_item);  
		   	spepc.setAdapter(spada_epc);  
		   	spepc.setSelection(0,false);
		}
		
		super.onResume();
	}
	
	@Override
	protected void onPause() {
		// TODO Auto-generated method stub
		super.onPause();
	}
	
	@Override
	protected void onDestroy() {
		// TODO Auto-generated method stub
		super.onDestroy();
	}
	
	private void initView(){
		//edENum0 = (EditText)findViewById(R.id.epc0);
		spepc = (Spinner)findViewById(R.id.epc_spinner);  
		tvResult = (TextView)findViewById(R.id.rw_result);	
		c_mem = (Spinner)findViewById(R.id.mem_spinner);
		ArrayAdapter<CharSequence> adapter =  ArrayAdapter.createFromResource(this, R.array.men_select, android.R.layout.simple_spinner_item);
		adapter.setDropDownViewResource(android.R.layout.simple_spinner_dropdown_item);
		c_mem.setAdapter(adapter); 
		c_mem.setSelection(3, true);
		c_mem.setOnItemSelectedListener(this);
		
		c_wordPtr = (EditText)findViewById(R.id.et_wordptr);
		c_wordPtr.setText("0");
		c_len = (EditText)findViewById(R.id.et_length);
		c_len.setText("6");
		c_pwd = (EditText)findViewById(R.id.et_pwd);
		c_pwd.setText("00000000");
		content = (EditText)findViewById(R.id.et_content_6c);
		readContent =  (EditText)findViewById(R.id.et_read_6c);
		rButton = (Button)findViewById(R.id.button_read_6c);
		wButton = (Button)findViewById(R.id.button_write_6c);
		btWriteEPC = (Button)findViewById(R.id.button_write_epc);
		rButton.setOnClickListener(this);
		wButton.setOnClickListener(this);	
		btWriteEPC.setOnClickListener(this);
	}
	
	@Override
	public void onBackPressed() {
	}

	@SuppressLint("ResourceAsColor")
	@Override
	public void onClick(View view) {
		if(view == wButton){
			if(!checkContent(CHECK_W_6C))return;
			try{
				int result = 0x30;
				ReaderParameter param = Reader.rrlib.GetInventoryPatameter();
				String str = spepc.getSelectedItem().toString();
				byte Mem = (byte)c_mem.getSelectedItemPosition();
				byte WordPtr =(byte)(int)Integer.valueOf(c_wordPtr.getText().toString());
				byte[]Password = hexStringToBytes(c_pwd.getText().toString());
				String strData =content.getText().toString();
				if(param.TidLen==0)
				{
					result = Reader.rrlib.WriteDataByEPC(str, Mem, WordPtr, Password, strData);
				}
				else
				{
					result = Reader.rrlib.WriteDataByTID(str, Mem, WordPtr, Password, strData);
				}
				if(result!=0){
					Reader.writelog(getString(R.string.write_failed), tvResult);
				}
				else{
					Reader.writelog(getString(R.string.write_success), tvResult);
				}
			}catch(Exception ex)
			{Reader.writelog(getString(R.string.write_failed), tvResult);}
			
			
		}else if(view == rButton){
			if(!checkContent(CHECK_R_6C))return;
			try{
				String strData="";
				ReaderParameter param = Reader.rrlib.GetInventoryPatameter();
				String str = spepc.getSelectedItem().toString();
				byte Mem = (byte)c_mem.getSelectedItemPosition();
				byte Num = (byte)(int)Integer.valueOf(c_len.getText().toString());
				byte WordPtr =(byte)(int)Integer.valueOf(c_wordPtr.getText().toString());
				byte[]Password = hexStringToBytes(c_pwd.getText().toString());
				if(param.TidLen==0)
				{
					strData = Reader.rrlib.ReadDataByEPC(str, Mem, WordPtr,Num, Password);
				}
				else
				{
					strData = Reader.rrlib.ReadDataByTID(str, Mem, WordPtr, Num,Password);
				}
				if(strData.length()<4){
					Reader.writelog(getString(R.string.get_failed), tvResult);
				}
				else{
					readContent.setText(strData);
					Reader.writelog(getString(R.string.get_success), tvResult);
				}
			}catch(Exception ex)
			{
				Reader.writelog(getString(R.string.get_failed), tvResult);
			}
		}
		else if(view == btWriteEPC)
		{
			if(!checkContent(CHECK_W_6C))return;
			try{
				int result = 0x30;
				ReaderParameter param = Reader.rrlib.GetInventoryPatameter();
				String str = spepc.getSelectedItem().toString();
				byte Mem = (byte)c_mem.getSelectedItemPosition();
				byte WordPtr =(byte)(int)Integer.valueOf(c_wordPtr.getText().toString());
				byte[]Password = hexStringToBytes(c_pwd.getText().toString());
				String strData =content.getText().toString();
				if(param.TidLen==0)
				{
					Reader.writelog(getString(R.string.write_failed), tvResult);
					return;
				}
				else
				{
					result = Reader.rrlib.WriteEPCByTID(str, strData, Password);
				}
				if(result!=0){
					Reader.writelog(getString(R.string.write_failed), tvResult);
				}
				else{
					Reader.writelog(getString(R.string.write_success), tvResult);
				}
			}catch(Exception ex)
			{Reader.writelog(getString(R.string.write_failed), tvResult);}
		}
	}

	@Override
	public void onItemSelected(AdapterView<?> arg0, View arg1, int position,
			long arg3) {
		selectedEd = position;
	}

	@Override
	public void onNothingSelected(AdapterView<?> arg0) {
		// TODO Auto-generated method stub
		
	}

	private boolean checkContent(int check){
		switch (check) {
		case CHECK_W_6C:
			if(Util.isEtEmpty(content)) return Util.showWarning(this,R.string.content_empty_warning);
			if(Integer.valueOf(c_len.getText().toString()) != content.getText().toString().length()/4) 
				return Util.showWarning(this,R.string.length_content_warning);
			if(!(Util.isLenLegal(content)))
				return Util.showWarning(this,R.string.str_lenght_odd_warning);
			if(!(Util.isLenLegal(c_pwd)))
				return Util.showWarning(this,R.string.str_lenght_odd_warning);
		case CHECK_R_6C:
			if(Util.isEtEmpty(c_wordPtr)) return Util.showWarning(this,R.string.wordptr_empty_warning);
			if(Util.isEtEmpty(c_len)) return Util.showWarning(this,R.string.length_empty_warning);
			if(Util.isEtEmpty(c_pwd)) return Util.showWarning(this,R.string.pwd_empty_warning);
			
			if(!(Util.isLenLegal(c_pwd)))
				return Util.showWarning(this,R.string.str_lenght_odd_warning);
			
			break;
		default:
			break;
		}
		return true;
	}
	
	public String bytesToHexString(byte[] src, int offset, int length) {
        StringBuilder stringBuilder = new StringBuilder("");
        if (src == null || src.length <= 0) {
            return null;
        }
        for (int i = offset; i < length; i++) {
            int v = src[i] & 0xFF;
            String hv = Integer.toHexString(v);
            if (hv.length() == 1) {
                stringBuilder.append(0);
            }
            stringBuilder.append(hv);
        }
        return stringBuilder.toString();
    }

	public byte[] hexStringToBytes(String hexString) {  
        if (hexString == null || hexString.equals("")) {  
            return null;  
        }  
        hexString = hexString.toUpperCase();  
        int length = hexString.length() / 2;  
        char[] hexChars = hexString.toCharArray();  
        byte[] d = new byte[length];  
        for (int i = 0; i < length; i++) {  
            int pos = i * 2;  
            d[i] = (byte) (charToByte(hexChars[pos]) << 4 | charToByte(hexChars[pos + 1]));  
        }  
        return d;  
    }   
    private byte charToByte(char c) {  
        return (byte) "0123456789ABCDEF".indexOf(c);  
    } 
}
