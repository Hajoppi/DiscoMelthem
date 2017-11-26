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
    public GameObject GameOverCanvas;
    float timer;
    List<Material> decorations = new List<Material>();
    GenerateDanceFloor danceFloor;
    DancerManager dancerManager;

	// Use this for initialization
	void Awake () {
        timer = 0;
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
        if (timer >= 220)
        {
            GameOver();
            StartCoroutine(WaitForQuit());
        }
        timer += Time.deltaTime;
        scoreText.text = "HEAT: " + score;
	}

    IEnumerator WaitForQuit()
    {
        yield return new WaitForSeconds(5);
        Application.Quit();
    }

    void GameOver()
    {
        GameOverCanvas.SetActive(true);
        string t = "Final Heat: " + score;
        GameObject.FindWithTag("GameOverScore").GetComponent<Text>().text = t;
    }

    public void SetScore(int newScore)
    {
        score = newScore;
    }

    public int GetScore()
    {
        return score;
    }

    public void AddScore (int amount, bool addDancer)
    {
        SetScore(amount + score);
        if (addDancer)
        {
            dancerManager.Add();
        }
        dancerManager.IncreaseHeat((float) amount * 0.0025f);
        danceFloor.heat += 0.005f * (float) amount;
        foreach (Material m in decorations)
        {
            if(m.GetFloat("_Heat") + 0.005f * (float)amount > 1)
            {
                m.SetFloat("_Heat", 1);
            }
            else
            {
                m.SetFloat("_Heat", m.GetFloat("_Heat") + 0.005f * (float)amount);
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
        dancerManager.DecreaseHeat((float) amount * 0.0025f);
        danceFloor.heat -= 0.005f * (float)amount;
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
