using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class EquipmentScore : MonoBehaviour {

    public int scoreValue;
    public bool currentlyActive;
    float activeTime;
    public Renderer renderer;


	// Use this for initialization
	void Start () {
        scoreValue = 0;
        activeTime = 0;
        currentlyActive = false;
        renderer = gameObject.GetComponentInChildren<Renderer>();
	}
	
    void SetValue (int value)
    {
        scoreValue = value;
    }

    void SetActive (float time)
    {
        currentlyActive = true;
        activeTime = time;
    }

    public void ActivateEquipment(int value, float activeTime)
    {
        SetValue(value);
        SetActive(activeTime);
        SetAlpha(.5f);
    }

    public void DeactivateEquipment()
    {
        SetValue(0);
        SetAlpha(0f);
    }

    int GetValue ()
    {
        return scoreValue;
    }

    void SetAlpha(float alpha)
    {
        Color col = renderer.material.color;
        col.a = alpha;
        renderer.material.color = col;
        print(renderer);
    }


	// Update is called once per frame
	void Update () {
		if (currentlyActive)
        {
            float newActiveTime = activeTime - Time.deltaTime;
            if (newActiveTime < 0)
            {
                ScoreManager scoreManager = GameObject.FindWithTag("scoreManager").GetComponent<ScoreManager>();
                scoreManager.ReduceScore(scoreValue);
                activeTime = 0;
                currentlyActive = false;
                DeactivateEquipment();
            }
            else
            {
                activeTime = newActiveTime;
            }
        }
	}
}
