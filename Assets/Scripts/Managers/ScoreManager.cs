using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class ScoreManager : MonoBehaviour {

    int score;
    public Text scoreText;

	// Use this for initialization
	void Awake () {
        score = 10;
    }
	
	// Update is called once per frame
	void Update () {
        scoreText.text = "Score: " + score;
	}

    void SetScore(int newScore)
    {
        score = newScore;
    }

    void AddScore (int amount)
    {
        SetScore(amount + score);
    }

    void ReduceScore (int amount)
    {
        int newScore = score - amount;
        if (newScore < 0)
        {
            SetScore(0);
        } else
        {
            SetScore(score - amount);
        }
    }


}
