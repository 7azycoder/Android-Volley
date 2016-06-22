package com.devlovepreet.jsonobjectvolley;

import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;
import android.widget.Toast;

import com.android.volley.Request;
import com.android.volley.Response;
import com.android.volley.VolleyError;
import com.android.volley.toolbox.JsonObjectRequest;

import org.json.JSONException;
import org.json.JSONObject;
import org.w3c.dom.Text;

public class MainActivity extends AppCompatActivity {

    Button button;
    TextView Name,Email,Mobile;
    String json_url = "http://192.168.0.101/json/getInfo.php";
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        button = (Button) findViewById(R.id.bn);
        Name = (TextView) findViewById(R.id.name);
        Email = (TextView)findViewById(R.id.email);
        Mobile = (TextView) findViewById(R.id.mobile);
        button.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                JsonObjectRequest jsonObjectRequest = new JsonObjectRequest(Request.Method.POST, json_url, (String) null,
                        new Response.Listener<JSONObject>() {
                            @Override
                            public void onResponse(JSONObject response) {
                                try {
                                    Name.setText(response.getString("Name"));
                                    Email.setText(response.getString("Email"));
                                    Mobile.setText(response.getString("Mobile"));
                                } catch (JSONException e) {
                                    e.printStackTrace();
                                }

                            }
                        },
                        new Response.ErrorListener() {
                            @Override
                            public void onErrorResponse(VolleyError error) {
                                Toast.makeText(MainActivity.this,"Something went wrong",Toast.LENGTH_SHORT).show();
                                error.printStackTrace();
                            }
                        }
                );
                MySingleton.getInstance(MainActivity.this).addToRequestque(jsonObjectRequest);
            }
        });
    }
}
