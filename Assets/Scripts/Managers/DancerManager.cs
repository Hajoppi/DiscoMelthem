using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class DancerManager : MonoBehaviour {
    List<GameObject> dancers = new List<GameObject>();
    public GameObject dancer;
    public GameObject iceCube;
    //public GameObject scoreObject;
    //ScoreManager score;
    //int lastScore;
    public List<GameObject> dancerModels = new List<GameObject>();
    // Use this for initialization
    void Start () {
        /*
        score = scoreObject.GetComponent<ScoreManager>();
        lastScore = 0;
        */
	}
	
	// Update is called once per frame
	void Update () {
		/*
        if (score.GetScore() > lastScore)
        {
            Add();
            IncreaseHeat();
        } else if (score.GetScore() < lastScore) {
            DecreaseHeat();
        }
        lastScore = score.GetScore();
        */
    }

    public void IncreaseHeat(float amount)
    {
        foreach(GameObject d in dancers)
        {
            d.GetComponent<Dancer>().Adder(amount);
        }
    }

    public void DecreaseHeat(float amount)
    {
        foreach(GameObject d in dancers)
        {
            d.GetComponent<Dancer>().Reducer(amount);
        }
    }

    public void Add()
    {
        print("ADD");
        GameObject d = Instantiate(dancer, new Vector3(5, 0, -9), Quaternion.identity);
        GameObject a = Instantiate(dancerModels[Random.Range(0, dancerModels.Count)], d.transform.position, d.transform.rotation);
        GameObject cube = Instantiate(iceCube, d.transform.position, d.transform.rotation);
        a.transform.SetParent(d.transform);
        cube.transform.SetParent(d.transform);
        dancers.Add(d);
        d.transform.SetParent(this.transform);
    }
}
