package com.example.bai_tap_pin;

import androidx.appcompat.app.AppCompatActivity;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.graphics.Color;
import android.os.BatteryManager;
import android.os.Bundle;
import android.widget.TextView;

public class MainActivity extends AppCompatActivity {

    private TextView battery;
    private TextView statusBattery;

    private BroadcastReceiver batteryReceiver = new BroadcastReceiver() {
        @Override
        public void onReceive(Context context, Intent intent) {
            int level = intent.getIntExtra(BatteryManager.EXTRA_LEVEL, 0);
            int chargeStatus = intent.getIntExtra(BatteryManager.EXTRA_STATUS, -1);
            boolean isLow = intent.getBooleanExtra(BatteryManager.EXTRA_BATTERY_LOW, false);
            boolean isCharging = chargeStatus == BatteryManager.BATTERY_STATUS_CHARGING ||
                    chargeStatus == BatteryManager.BATTERY_STATUS_FULL;
            battery.setText(String.valueOf(level));
            if(isCharging){
                statusBattery.setText("Is charging");
            }
            else statusBattery.setText("No charge");
            if(isLow){
                getWindow().getDecorView().setBackgroundColor(Color.YELLOW);
            }
            else getWindow().getDecorView().setBackgroundColor(Color.GREEN);

        }
    };
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        battery = findViewById(R.id.currentBattery);
        statusBattery = findViewById(R.id.status);

        this.registerReceiver(this.batteryReceiver, new IntentFilter(Intent.ACTION_BATTERY_CHANGED));
    }
}