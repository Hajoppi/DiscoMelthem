using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class DancerManager : MonoBehaviour {
    ArrayList dancers;
    public GameObject dancer;
    public GameObject score;
	// Use this for initialization
	void Start () {
        dancers = new ArrayList();
        InvokeRepeating("Add", 3, 3);
	}
	
	// Update is called once per frame
	void Update () {
		/*if(score.GetComponent<ScoreManager> ().GetScore() > 100)
        {
            Add();
        }*/
	}
    void Add()
    {
        GameObject d = Instantiate(dancer, new Vector3(5, 0, -9), Quaternion.identity);
        dancers.Add(d);
        d.transform.SetParent(this.transform);
    }
}
