package com.radio.codec2talkie;

import androidx.appcompat.app.AppCompatActivity;
import androidx.core.app.ActivityCompat;
import androidx.core.content.ContextCompat;

import android.Manifest;
import android.annotation.SuppressLint;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.view.MotionEvent;
import android.view.View;
import android.widget.AdapterView;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.Spinner;
import android.widget.TextView;
import android.widget.Toast;

import com.radio.codec2talkie.bluetooth.ConnectActivity;
import com.radio.codec2talkie.bluetooth.SocketHandler;
import com.ustadmobile.codec2.Codec2;

import java.io.IOException;
import java.util.LinkedList;
import java.util.List;

public class MainActivity extends AppCompatActivity {

    private final static int REQUEST_CONNECT_BT = 1;
    private final static int REQUEST_PERMISSIONS = 2;

    private final static int CODEC2_DEFAULT_MODE = Codec2.CODEC2_MODE_450;
    private final static int CODEC2_DEFAULT_MODE_POS = 0;

    private final String[] _requiredPermissions = new String[] {
            Manifest.permission.BLUETOOTH,
            Manifest.permission.RECORD_AUDIO
    };

    private TextView _textBtName;

    private Codec2Player _codec2Player;

    @SuppressLint("ClickableViewAccessibility")
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        _textBtName = (TextView)findViewById(R.id.textBtName);
        Button btnPtt = (Button)findViewById(R.id.btnPtt);
        btnPtt.setOnTouchListener(onBtnPttTouchListener);

        Spinner spinnerCodec2Mode = (Spinner)findViewById(R.id.spinnerCodecMode);
        spinnerCodec2Mode.setSelection(CODEC2_DEFAULT_MODE_POS);
        spinnerCodec2Mode.setOnItemSelectedListener(onCodecModeSelectedListener);

        CheckBox checkBoxLoopback = (CheckBox)findViewById(R.id.checkBoxLoopback);
        checkBoxLoopback.setOnCheckedChangeListener(onLoopbackCheckedChangeListener);

        _codec2Player = new Codec2Player(onPlayerStateChanged, CODEC2_DEFAULT_MODE);

        if (requestPermissions()) {
            startBluetoothConnectActivity();
        }
    }

    protected void startBluetoothConnectActivity() {
        Intent bluetoothConnectIntent = new Intent(this, ConnectActivity.class);
        startActivityForResult(bluetoothConnectIntent, REQUEST_CONNECT_BT);
    }

    protected boolean requestPermissions() {
        List<String> permissionsToRequest = new LinkedList<String>();

        for (String permission : _requiredPermissions) {
            if (ContextCompat.checkSelfPermission(MainActivity.this, permission) == PackageManager.PERMISSION_DENIED) {
                permissionsToRequest.add(permission);
            }
        }
        if (permissionsToRequest.size() > 0) {
            ActivityCompat.requestPermissions(
                    MainActivity.this,
                    permissionsToRequest.toArray(new String[0]),
                    REQUEST_PERMISSIONS);
            return false;
        }
        return true;
    }

    private final CompoundButton.OnCheckedChangeListener onLoopbackCheckedChangeListener = new CompoundButton.OnCheckedChangeListener() {
        @Override
        public void onCheckedChanged(CompoundButton buttonView, boolean isChecked) {
            _codec2Player.setLoopbackMode(isChecked);
        }
    };

    private final AdapterView.OnItemSelectedListener onCodecModeSelectedListener = new AdapterView.OnItemSelectedListener() {
        @Override
        public void onItemSelected(AdapterView<?> parent, View view, int position, long id) {
            String selectedCodec = getResources().getStringArray(R.array.codec2_modes)[position];
            String [] codecNameCodecId = selectedCodec.split("=");
            _codec2Player.setCodecMode(Integer.parseInt(codecNameCodecId[1]));
        }

        @Override
        public void onNothingSelected(AdapterView<?> parent) {
        }
    };

    private final View.OnTouchListener onBtnPttTouchListener = new View.OnTouchListener() {
        @Override
        public boolean onTouch(View v, MotionEvent event) {
            switch (event.getAction()) {
                case MotionEvent.ACTION_DOWN:
                    _codec2Player.startRecording();
                    break;
                case MotionEvent.ACTION_UP:
                    v.performClick();
                    _codec2Player.startPlayback();
                    break;
            }
            return false;
        }
    };

    @Override
    public void onRequestPermissionsResult(int requestCode, String[] permissions, int[] grantResults) {
        super.onRequestPermissionsResult(requestCode, permissions, grantResults);
        if (requestCode == REQUEST_PERMISSIONS) {
            boolean allGranted = true;
            for (int result : grantResults) {
                if (result != PackageManager.PERMISSION_GRANTED) {
                    allGranted = false;
                    break;
                }
            }
            if (allGranted) {
                Toast.makeText(MainActivity.this, "Permissions Granted", Toast.LENGTH_SHORT).show();
                startBluetoothConnectActivity();
            } else {
                Toast.makeText(MainActivity.this, "Permissions Denied", Toast.LENGTH_SHORT).show();
                finish();
            }
        }
    }

    private final Handler onPlayerStateChanged = new Handler(Looper.getMainLooper()) {
        @Override
        public void handleMessage(Message msg) {
            if (msg.what == Codec2Player.PLAYER_DISCONNECT) {
                Toast.makeText(getBaseContext(), "Bluetooth disconnected", Toast.LENGTH_SHORT).show();
                startBluetoothConnectActivity();
            }
        }
    };

    @Override
    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
        super.onActivityResult(requestCode, resultCode, data);
        if (requestCode == REQUEST_CONNECT_BT) {
            if (resultCode == RESULT_CANCELED) {
                finish();
            } else if (resultCode == RESULT_OK) {
                _textBtName.setText(String.format("BT: %s", data.getStringExtra("name")));
                try {
                    _codec2Player.setSocket(SocketHandler.getSocket());
                } catch (IOException e) {
                    e.printStackTrace();
                }
                _codec2Player.start();
            }
        }
    }
}