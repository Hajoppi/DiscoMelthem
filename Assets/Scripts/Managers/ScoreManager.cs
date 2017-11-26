using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class ScoreManager : MonoBehaviour {

    int score;
    public Text scoreText;
    public GameObject dancerManagerObject;
    public GameObject danceFloorObject;
    public GameObject[] room;
    List<Material> decorations = new List<Material>();
    GenerateDanceFloor danceFloor;
    DancerManager dancerManager;

	// Use this for initialization
	void Awake () {
        score = 0;
        danceFloor = danceFloorObject.GetComponent<GenerateDanceFloor>();
        dancerManager = dancerManagerObject.GetComponent<DancerManager>();
        foreach (GameObject deco in room)
        {
            decorations.Add(deco.GetComponent<MeshRenderer>().material);
        }
    }
	
	// Update is called once per frame
	void Update () {
        scoreText.text = "Score: " + score;
	}

    public void SetScore(int newScore)
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
        danceFloor.heat += 0.1f;
        foreach (Material m in decorations)
        {
            if(m.GetFloat("_Heat") +0.1f > 1)
            {
                m.SetFloat("_Heat", 1);
            }
            else
            {
                m.SetFloat("_Heat", m.GetFloat("_Heat") + 0.1f);
            }
        }

        if (danceFloor.heat > 1f)
        {
            danceFloor.heat = 1f;
        }
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
        danceFloor.heat -= 0.1f;
        foreach (Material m in decorations)
        {
            if(m.GetFloat("_Heat")- 0.1f < 0)
            {
                m.SetFloat("_Heat", 0);
            }
            else {
                m.SetFloat("_Heat", m.GetFloat("_Heat") - 0.1f);
            }
        }
        if (danceFloor.heat < 0)
        {
            danceFloor.heat = 0;
        }
    }


}
