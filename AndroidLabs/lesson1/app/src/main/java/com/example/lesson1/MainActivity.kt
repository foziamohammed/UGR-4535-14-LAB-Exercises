package com.example.lesson1

import android.os.Bundle
import androidx.activity.ComponentActivity
import androidx.activity.compose.setContent
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Surface
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.ui.Modifier
import androidx.compose.ui.tooling.preview.Preview
import com.example.lesson1.ui.theme.Lesson1Theme

class MainActivity : ComponentActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContent {

            MessageCard(name = "fozia")
        }
    }
}

@Composable
fun MessageCard(name: String) {
    Text(
        text = "Hello $name!",

    )
}

@Preview(showBackground = true)
@Composable
fun PreviewMessageCard() {
    MessageCard(name = "fozia")
    }
