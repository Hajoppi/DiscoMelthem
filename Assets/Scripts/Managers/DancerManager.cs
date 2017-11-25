using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class DancerManager : MonoBehaviour {
    ArrayList dancers;
    public GameObject dancer;
    public GameObject score;
    public List<GameObject> dancerModels = new List<GameObject>();
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
        GameObject a = Instantiate(dancerModels[Random.Range(0, dancerModels.Count)], d.transform.position, d.transform.rotation);
        a.transform.SetParent(d.transform);
        dancers.Add(d);
        d.transform.SetParent(this.transform);
    }
}
