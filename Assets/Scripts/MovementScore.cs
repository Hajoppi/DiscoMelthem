using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MovementScore : MonoBehaviour {

    public GameObject leftController;
    public GameObject rightController;

    Vector3 prevLeftTransform;
    Vector3 prevRightTransform;

    float accumulator;

	// Use this for initialization
	void Start () {
        prevLeftTransform = leftController.transform.position;
        prevRightTransform = rightController.transform.position;
    }
	
	// Update is called once per frame
	void Update () {
        float distance = Vector3.Distance(leftController.transform.position, rightController.transform.position);
        float leftVelocity = Vector3.Distance(prevLeftTransform, leftController.transform.position) / Time.deltaTime;
        float rightVelocity = Vector3.Distance(prevRightTransform, rightController.transform.position) / Time.deltaTime;
        GameObject scoreManagerObject = GameObject.FindWithTag("scoreManager");
        ScoreManager scoreManager = scoreManagerObject.GetComponent<ScoreManager>();
        accumulator += (distance + (leftVelocity + rightVelocity)) * Time.deltaTime * 2;
        if (accumulator > 1)
        {
            scoreManager.AddScore(1, false);
            accumulator = 0;
        }
        
        prevLeftTransform = leftController.transform.position;
        prevRightTransform = rightController.transform.position;

    }
}
