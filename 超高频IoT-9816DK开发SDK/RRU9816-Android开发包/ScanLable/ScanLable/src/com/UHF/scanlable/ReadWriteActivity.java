package com.UHF.scanlable;

import com.UHF.scanlable.UfhData.UhfGetData;

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
import android.widget.Spinner;
import android.widget.TextView;
import android.widget.Toast;

import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

public class ReadWriteActivity extends Activity implements OnClickListener, OnItemSelectedListener{
	
	private int mode;
	private static final int MODE_6B = 0;
	private static final int MODE_6C = 1;
	static SoundPool soundpool = new SoundPool(1, AudioManager.STREAM_NOTIFICATION, 100);;
	static int soundid = soundpool.load("/etc/Scan_new.ogg", 1);
	EditText edENum0;
//	EditText edENum1;
//	EditText edENum2;
//	EditText edENum3;
//	EditText[] edENums;
	int selectedEd = 2;
	int selectedWhenPause = 0;
	
	Spinner c_mem;
	EditText c_wordPtr;
	EditText c_len;
	EditText c_pwd;
	EditText c_ptr;
	
	EditText b_id;
	EditText b_addr;
	EditText b_num;
	
	EditText content;
	Button rButton;
	Button wButton;
	
	private static final int CHECK_W_6B = 0;
	private static final int CHECK_R_6B = 1;
	private static final int CHECK_W_6C = 2;
	private static final int CHECK_R_6C = 3;
	
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		// TODO Auto-generated method stub
		super.onCreate(savedInstanceState);
		Log.i("zhouxin", ">>>>>>>>>>>>>>>>>>>>>rw oncreate" + this);
		if(getIntent().getStringExtra(MainActivity.EXTRA_MODE).equals(MainActivity.TABLE_6B)){
			setContentView(R.layout.rw_6b);
			mode = MODE_6B;
		}else{
			setContentView(R.layout.rw_6c);
			mode = MODE_6C;
		}
		initView();
	}
	
	@Override
	protected void onResume() {
		// TODO Auto-generated method stub
		Log.i("zhouxin",">>>>>>>>>>>>>>>>>>>>>>rw onResume");
		switch (mode) {
		case MODE_6B:
			if (!UfhData.getUfh_id().equals(b_id.getText().toString())) {
				b_id.setText(UfhData.getUfh_id());
			}
			content.setText("");
			break;
		case MODE_6C:
			if(!UfhData.getUfh_id().equals(edENum0.getText().toString())){
				edENum0.setText(UfhData.getUfh_id());
			}
			content.setText("");
			break;
		default:
			break;
		}
		super.onResume();
	}
	
	@Override
	protected void onPause() {
		// TODO Auto-generated method stub
		super.onPause();
		selectedWhenPause = selectedEd;
	}
	
	@Override
	protected void onDestroy() {
		// TODO Auto-generated method stub
		Log.i("zhouxin", ">>>>>>>>>>>>>>>>>>>>>rw onDestroy");
		super.onDestroy();
	}
	
	private void initView(){
		switch (mode) {
		case MODE_6B:
			b_id = (EditText)findViewById(R.id.et_id);
//			b_id.setText(getIntent().getStringExtra(MainActivity.EXTRA_EPC));
//			b_id.setText(UfhData.getUfh_id());
			b_addr = (EditText)findViewById(R.id.et_addr);
			b_addr.setText("8");
			b_num = (EditText)findViewById(R.id.et_num);
			b_num.setText("8");
			content = (EditText)findViewById(R.id.et_content_6b);
			rButton = (Button)findViewById(R.id.button_read_6b);
			wButton = (Button)findViewById(R.id.button_write_6b);
			
			rButton.setOnClickListener(this);
			wButton.setOnClickListener(this);
			
			break;
		
		case MODE_6C:
			edENum0 = (EditText)findViewById(R.id.epc0);
//			edENum1 = (EditText)findViewById(R.id.epc1);
//			edENum2 = (EditText)findViewById(R.id.epc2);
//			edENum3 = (EditText)findViewById(R.id.epc3);
//			edENum0.setText(getIntent().getStringExtra(MainActivity.EXTRA_EPC));
//			edENum0.setText(UfhData.getUfh_id());
			
			c_mem = (Spinner)findViewById(R.id.mem_spinner);
			ArrayAdapter<CharSequence> adapter =  ArrayAdapter.createFromResource(this, R.array.men_select, android.R.layout.simple_spinner_item);
			adapter.setDropDownViewResource(android.R.layout.simple_spinner_dropdown_item);
			c_mem.setAdapter(adapter); 
			c_mem.setSelection(2, true);
			c_mem.setOnItemSelectedListener(this);
			
			c_wordPtr = (EditText)findViewById(R.id.et_wordptr);
			c_wordPtr.setText("0");
			c_len = (EditText)findViewById(R.id.et_length);
			c_len.setText("6");
			c_pwd = (EditText)findViewById(R.id.et_pwd);
			c_pwd.setText("00000000");
			content = (EditText)findViewById(R.id.et_content_6c);
			rButton = (Button)findViewById(R.id.button_read_6c);
			wButton = (Button)findViewById(R.id.button_write_6c);
//			edENums = new EditText[]{edENum0, edENum1, edENum2, edENum3};
			
	/*		edENum0.setOnClickListener(this);
			edENum1.setOnClickListener(this);
			edENum2.setOnClickListener(this);
			edENum3.setOnClickListener(this);*/
			rButton.setOnClickListener(this);
			wButton.setOnClickListener(this);
			
			
			break;

		default:
			break;
		}
	}
	
	@Override
	public void onBackPressed() {
		// TODO Auto-generated method stub
		Intent intent = new Intent(this, ScanMode.class);  
        intent.putExtra(MainActivity.EXTRA_MODE, getIntent().getStringExtra(MainActivity.EXTRA_MODE));
        Window w = ((ActivityGroup)getParent()).getLocalActivityManager().startActivity(  
                "FirstActivity", intent);  
        View view = w.getDecorView();  
        ((ActivityGroup)getParent()).setContentView(view); 
        //((ActivityGroup)getParent()).getLocalActivityManager().destroyActivity("SecondActivity", false);
	}

	@SuppressLint("ResourceAsColor")
	@Override
	public void onClick(View view) {
		Log.i("zhouxin", "----onclick----");
		switch (mode) {
		case MODE_6B:
			if(view == wButton){
				if(!checkContent(CHECK_W_6B))return;
				int result=UhfGetData.Write6B(
						UhfGetData.hexStringToBytes(b_id.getText().toString()), 
//						UhfGetData.hexStringToBytes(b_addr.getText().toString())[0], 
						(byte)(int)Integer.valueOf(b_addr.getText().toString()),
						UhfGetData.hexStringToBytes(content.getText().toString()), 
						(byte)(int)Integer.valueOf(b_num.getText().toString()));
				/*if(result==0){
					ExecutorService thread = Executors.newSingleThreadExecutor();
					thread.execute(new Runnable(){
						public void run(){
							soundpool.play(soundid, 1, 1, 0, 0, 1);
						}
					});
				}*/
			}else if(view == rButton){
				if(!checkContent(CHECK_R_6B))return;
				int result=UhfGetData.Read6B(UhfGetData.hexStringToBytes(b_id.getText().toString()),
//						UhfGetData.hexStringToBytes(b_addr.getText().toString())[0], 
						(byte)(int)Integer.valueOf(b_addr.getText().toString()),
//						UhfGetData.hexStringToBytes(b_num.getText().toString())[0]
						(byte)(int)Integer.valueOf(b_num.getText().toString())
						);
				if(result==0){
					String temp=UhfGetData.bytesToHexString(UhfGetData.getRead6Bdata(),0,Integer.valueOf(b_num.getText().toString())).toUpperCase();
					if(Integer.valueOf(b_num.getText().toString())==0)
						temp="";
					content.setText(temp.toUpperCase());
					/*ExecutorService thread = Executors.newSingleThreadExecutor();
					thread.execute(new Runnable(){
						public void run(){
							soundpool.play(soundid, 1, 1, 0, 0, 1);
						}
					});*/
				}
				else{
					content.setText("");
				}
			}
			break;
		case MODE_6C:
			if(view == wButton){
				if(!checkContent(CHECK_W_6C))return;
				/*if()

				Log.i("zhouxin",">>>"+(byte)(content.getText().length()/2)+"======="+UhfGetData.hexStringToBytes(c_pwd.getText().toString()).length);
				*/
				int result=UhfGetData.Write6c(
//						UhfGetData.hexStringToBytes(c_len.getText().toString())[0], 
						(byte)(int)Integer.valueOf(c_len.getText().toString()),
						(byte)(UfhData.epcBytes.get(edENum0.getText().toString()).length/2), 
						UfhData.epcBytes.get(edENum0.getText().toString()), 
						(byte)selectedEd, 
//						UhfGetData.hexStringToBytes(c_wordPtr.getText().toString())[0],
						(byte)(int)Integer.valueOf(c_wordPtr.getText().toString()),
						UhfGetData.hexStringToBytes(content.getText().toString()), 
						UhfGetData.hexStringToBytes(c_pwd.getText().toString()));
				/*if(result==0){
					ExecutorService thread = Executors.newSingleThreadExecutor();
					thread.execute(new Runnable(){
						public void run(){
							soundpool.play(soundid, 1, 1, 0, 0, 1);
						}
					});
				}*/
				
			}else if(view == rButton){
				if(!checkContent(CHECK_R_6C))return;
				Log.i("zhouxin",">>>"+UhfGetData.hexStringToBytes(c_pwd.getText().toString()).length);
//				String pwd = c_pwd.getText().toString();
//				byte[] bytePwd = new byte[pwd.length()];
//				for(int i = 0; i < pwd.length(); i++){
//					bytePwd[i] = Byte.valueOf(pwd.substring(i, i+1));
//				}
				UhfGetData.Read6C((byte)(UfhData.epcBytes.get(edENum0.getText().toString()).length/2),
						UfhData.epcBytes.get(edENum0.getText().toString()),
						(byte)selectedEd,
						Byte.valueOf(c_wordPtr.getText().toString()),
						Byte.valueOf(c_len.getText().toString()),
						UhfGetData.hexStringToBytes(c_pwd.getText().toString()));
				String temp=UhfGetData.bytesToHexString(UhfGetData.getRead6Cdata(),0,UhfGetData.getRead6CLen()).toUpperCase();
				int m= UhfGetData.getRead6CLen();
				if(m==0){
					content.setText("");
				}
				else{
					content.setText(temp.toUpperCase());
					/*ExecutorService thread = Executors.newSingleThreadExecutor();
					thread.execute(new Runnable(){
						public void run(){
							soundpool.play(soundid, 1, 1, 0, 0, 1);
						}
					});*/
				}
			}
			
			break;

		default:
			break;
		}
	}

	@Override
	public void onItemSelected(AdapterView<?> arg0, View arg1, int position,
			long arg3) {
		Log.i("zhouxin",">>>>>>>>>position>>>>>>"+position);
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
		case CHECK_R_6C:
			if(Util.isEtEmpty(c_wordPtr)) return Util.showWarning(this,R.string.wordptr_empty_warning);
			if(Util.isEtEmpty(c_len)) return Util.showWarning(this,R.string.length_empty_warning);
			if(Util.isEtEmpty(c_pwd)) return Util.showWarning(this,R.string.pwd_empty_warning);
			
			if(!(Util.isLenLegal(c_pwd)))
				return Util.showWarning(this,R.string.str_lenght_odd_warning);
			
			break;

		case CHECK_R_6B:
//			if(!Util.isEtsLegal(new EditText[]{b_addr,b_num})){
//				return Util.showWarning(this, R.string.data_ilegal);
//			}
			
			if(Util.isEtEmpty(b_addr) || Util.isEtEmpty(b_num)){
				return Util.showWarning(this, R.string.data_ilegal);
			}
			
			break;
		case CHECK_W_6B:
			if(Util.isEtEmpty(content) || !Util.isLenLegal(content) || Util.isEtEmpty(b_addr)){
				return Util.showWarning(this, R.string.data_ilegal);
			}
			
			break;
		default:
			break;
		}
		return true;
	}
}
