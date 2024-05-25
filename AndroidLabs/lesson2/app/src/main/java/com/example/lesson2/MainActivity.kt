package com.example.lesson2

import android.os.Bundle
import android.os.Message
import androidx.activity.ComponentActivity
import androidx.activity.compose.setContent

import androidx.compose.foundation.Image
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.ui.res.painterResource
import androidx.compose.ui.tooling.preview.Preview


class MainActivity : ComponentActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContent {
            MessageCard(Message( "fozia", "hello world"))
            }
        }
    }
data class Message(val author: String, val body: String)

@Composable
fun MessageCard(msg: com.example.lesson2.Message) {
    Row {
        Image(painter = painterResource(id = R.drawable.ic_launcher_foreground), contentDescription = "Android")
        Column {
            Text(
                text = msg.author,
            )
            Text(text = msg.body)
        }
    }

}

@Preview(showBackground = true)
@Composable
fun PreviewMessageCard() {
    MessageCard(Message("fozia","helooo"))
    }
}