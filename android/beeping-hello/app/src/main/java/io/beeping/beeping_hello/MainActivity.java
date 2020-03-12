package io.beeping.beeping_hello;

import androidx.appcompat.app.AppCompatActivity;
import android.os.Bundle;

import com.beeping.AndroidBeepingCore.BeepingCore;
import com.beeping.AndroidBeepingCore.BeepingCoreEvent;

public class MainActivity extends AppCompatActivity
        implements BeepingCoreEvent {

    BeepingCore beeping;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);

        // Init Beeping Framework
        beeping = new BeepingCore(this);

        // Listening
        beeping.startBeepingListen();

        setContentView(R.layout.activity_main);
    }

    @Override
    public void beepIdWith(String beepId) {

        System.out.println("BEEPING:SDK: The BeepId is:" + beepId);

        // Stop listening
        beeping.stopBeepingListen();

    }
}
