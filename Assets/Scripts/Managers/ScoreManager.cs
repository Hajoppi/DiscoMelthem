using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ScoreManager : MonoBehaviour {

    public int score;


	// Use this for initialization
	void Awake () {
        score = 0;
	}
	
	// Update is called once per frame
	void Update () {
		
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
