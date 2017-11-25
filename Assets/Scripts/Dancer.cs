using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Dancer : MonoBehaviour {
    private int excitement = 0;
    Vector3 barLocation = new Vector3(-2, 0, -4);
    Vector3 danceFloorLocation = new Vector3(1, 0, 1);
    UnityEngine.AI.NavMeshAgent nav;
    // Use this for initialization
    void Start () {
        nav = GetComponent<UnityEngine.AI.NavMeshAgent>();
        InvokeRepeating("Adder", 1, 1);
	}
	void Adder()
    {
        excitement += 1;
    }
    // Update is called once per frame
    void Update()
    {
        if (excitement < 10)
        {
            nav.SetDestination(barLocation);
        }
        else if (excitement > 10)
        {
            nav.SetDestination(danceFloorLocation);
        }
    }
}
