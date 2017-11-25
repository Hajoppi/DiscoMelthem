using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class ScoreManager : MonoBehaviour {

    int score;
    public Text scoreText;
    public GameObject dancerManagerObject;
    DancerManager dancerManager;

	// Use this for initialization
	void Awake () {
        score = 0;
        dancerManager = dancerManagerObject.GetComponent<DancerManager>();

    }
	
	// Update is called once per frame
	void Update () {
        scoreText.text = "Score: " + score;
	}

    void SetScore(int newScore)
    {
        score = newScore;
    }

    public int GetScore()
    {
        return score;
    }

    public void AddScore (int amount)
    {
        SetScore(amount + score);
        dancerManager.Add();
        dancerManager.IncreaseHeat();
    }

    public void ReduceScore (int amount)
    {
        int newScore = score - amount;
        if (newScore < 0)
        {
            SetScore(0);
        } else
        {
            SetScore(score - amount);
        }
        dancerManager.DecreaseHeat();
    }


}
