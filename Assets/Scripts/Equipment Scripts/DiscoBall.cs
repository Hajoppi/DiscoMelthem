using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class DiscoBall : MonoBehaviour {

    float timer;

	// Use this for initialization
	void Start () {
        timer = 0;
	}
	
	// Update is called once per frame
	void Update () {
        timer += Time.deltaTime;
        gameObject.transform.Rotate(0f, 2 * Mathf.Sqrt(timer) * Time.deltaTime, 0f);
	}
}
