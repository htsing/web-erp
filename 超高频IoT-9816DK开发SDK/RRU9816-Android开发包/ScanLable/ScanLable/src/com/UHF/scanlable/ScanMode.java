package com.UHF.scanlable;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Timer;
import java.util.TimerTask;

import android.app.Activity;
import android.app.ActivityGroup;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.AdapterView.OnItemSelectedListener;
import android.widget.BaseAdapter;
import android.widget.Button;
import android.widget.ListView;
import android.widget.TextView;
import android.widget.Toast;

public class ScanMode extends Activity implements OnClickListener, OnItemClickListener{
	
	private String mode;
	private Map<String,Integer> data;
	
	Button scan;
	ListView listView;
	TextView txNum;
	
	private Timer timer;
	private MyAdapter myAdapter;
	private Handler mHandler;
	private boolean isCanceled = true;
	
	private static final int SCAN_INTERVAL = 10;
	
	private static final int MSG_UPDATE_LISTVIEW = 0;
	private static final int MODE_B = 0;
	private static final int MODE_C = 1;
	private boolean Scanflag=false;
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		// TODO Auto-generated method stub
		super.onCreate(savedInstanceState);
		Log.i("zhouxin",">>>>>>>>>>>>>>>>>>>>> mode onCreate");
		setContentView(R.layout.query);
		mode = getIntent().getStringExtra(MainActivity.EXTRA_MODE);
		scan = (Button)findViewById(R.id.button_scan);
		scan.setOnClickListener(this);
		
		listView = (ListView)findViewById(R.id.list);//
		listView.setOnItemClickListener(this);
		data = new HashMap<String, Integer>();
		txNum = (TextView)findViewById(R.id.tx_num);
		mHandler = new Handler(){

			@Override
			public void handleMessage(Message msg) {
				// TODO Auto-generated method stub
				if(isCanceled) return;
				switch (msg.what) {
				case MSG_UPDATE_LISTVIEW:
					if(mode.equals(MainActivity.TABLE_6B)){
						data = UfhData.scanResult6b;
					}else {
						data = UfhData.scanResult6c;
					}
					if(myAdapter == null){
						myAdapter = new MyAdapter(ScanMode.this, new ArrayList(data.keySet()));
						listView.setAdapter(myAdapter);
					}else{
						myAdapter.mList = new ArrayList(data.keySet());
					}
					txNum.setText(String.valueOf(myAdapter.getCount()));
					myAdapter.notifyDataSetChanged();
					break;

				default:
					break;
				}
				super.handleMessage(msg);
			}
			
		};
	}
	
	@Override
	protected void onResume() {
		// TODO Auto-generated method stub
		super.onResume();
		Log.i("zhouxin",">>>mode="+mode+"====="+this);
		txNum.setText("0");
		
	}
	
	
	@Override
	public void onClick(View arg0) {
		// TODO Auto-generated method stub
		if(!UfhData.isDeviceOpen()){
			Toast.makeText(this, R.string.open_warning, Toast.LENGTH_LONG).show();
			return;
		}
		if(timer == null){
			///////////声音开关初始化
			UfhData.Set_sound(true);
			UfhData.SoundFlag=false;
			//////////
			if (myAdapter != null) {
				if(mode.equals(MainActivity.TABLE_6B)){
					UfhData.scanResult6b.clear();
				}else if(mode.equals(MainActivity.TABLE_6C)){
					UfhData.scanResult6c.clear();
				}
				myAdapter.mList.clear();
				myAdapter.notifyDataSetChanged();
				mHandler.removeMessages(MSG_UPDATE_LISTVIEW);
				mHandler.sendEmptyMessage(MSG_UPDATE_LISTVIEW);
			}
			
			isCanceled = false;
			timer = new Timer();
			//
			timer.schedule(new TimerTask() {
				@Override
				public void run() {
					if(Scanflag)return;
					Scanflag=true;
					if(mode.equals(MainActivity.TABLE_6B)){
						Log.i("zhouxin", "------onclick-------6b");
						UfhData.read6b();
					}else if(mode.equals(MainActivity.TABLE_6C)){
						UfhData.read6c();
					}
					mHandler.removeMessages(MSG_UPDATE_LISTVIEW);
					mHandler.sendEmptyMessage(MSG_UPDATE_LISTVIEW);
					Scanflag=false;
				}
			}, 0, SCAN_INTERVAL);
			scan.setText("Stop");
		}else{
			//cancelScan();
			isCanceled = true;
			if(timer != null){
				timer.cancel();
				timer = null;
				scan.setText("Scan");
			}
			UfhData.Set_sound(false);
		}
	}
	
	private void cancelScan(){
		isCanceled = true;
		mHandler.removeMessages(MSG_UPDATE_LISTVIEW);
		if(timer != null){
			timer.cancel();
			timer = null;
			scan.setText("Scan");
			if(mode.equals(MainActivity.TABLE_6B)){
				UfhData.scanResult6b.clear();
			}else if(mode.equals(MainActivity.TABLE_6C)){
				UfhData.scanResult6c.clear();
			}
			if (myAdapter != null) {
				myAdapter.mList.clear();
				myAdapter.notifyDataSetChanged();
			}
			txNum.setText("0");
		}
	}
	
	@Override
	public void onItemClick(AdapterView<?> arg0, View arg1, int position, long arg3) {
		// TODO Auto-generated method stub
		UfhData.Set_sound(false);
		Log.i("zhouxin","=====onItemClick=========");
		String id = myAdapter.mList.get(position);
		Intent intent = new Intent(this,ReadWriteActivity.class);
		intent.putExtra(MainActivity.EXTRA_MODE, mode);
//		intent.putExtra(MainActivity.EXTRA_EPC, myAdapter.mList.get(position));
		UfhData.setUfh_id(myAdapter.mList.get(position));
		goActivty(intent);
	}
	
	@Override
	protected void onPause() {
		// TODO Auto-generated method stub
		super.onPause();
		UfhData.Set_sound(false);
		cancelScan();
	}
	
	@Override
	protected void onDestroy() {
		// TODO Auto-generated method stub
		Log.i("zhouxin",">>>>>>>>>>>>>>>>>>>>> mode onDestroy");
		super.onDestroy();
	}
	
	private void goActivty(Intent intent){
		Log.i("zhouxin","------------------go");
        Window w = ((ActivityGroup)getParent()).getLocalActivityManager()  
                .startActivity("SecondActivity",intent);  
        View view = w.getDecorView();  
        ((ActivityGroup)getParent()).setContentView(view);
        Log.i("zhouxin", "------------------oo");
	}
	
	class MyAdapter extends BaseAdapter{
		
		private Context mContext;
		private List<String> mList;
		private LayoutInflater layoutInflater;
		
		public MyAdapter(Context context, List<String> list) {
			mContext = context;
			mList = list;
			layoutInflater = LayoutInflater.from(context);
		}

		@Override
		public int getCount() {
			// TODO Auto-generated method stub
			return mList.size();
		}

		@Override
		public Object getItem(int position) {
			// TODO Auto-generated method stub
			return mList.get(position);
		}

		@Override
		public long getItemId(int arg0) {
			// TODO Auto-generated method stub
			return 0;
		}

		@Override
		public View getView(int position, View view, ViewGroup viewParent) {
			// TODO Auto-generated method stub
			ItemView iv = null;
			if(view == null){
				iv = new ItemView();
				view = layoutInflater.inflate(R.layout.list, null);
				iv.tvCode = (TextView)view.findViewById(R.id.list_lable);
				iv.tvNum = (TextView)view.findViewById(R.id.list_number);
				view.setTag(iv);
			}else{
				iv = (ItemView)view.getTag();
			}
			iv.tvCode.setText(mList.get(position));
			iv.tvNum.setText(data.get(mList.get(position)).toString());
			return view;
		}
		
		public class ItemView{
			TextView tvCode;
			TextView tvNum;
		}
	}

}
