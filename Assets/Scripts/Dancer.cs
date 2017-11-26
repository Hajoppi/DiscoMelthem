﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Dancer : MonoBehaviour {
    private float heat = 0;
    private float startTime = Time.time;
    Animator animator;
    List<Vector3> boringLocations = new List<Vector3>();
    private Vector3 targetLocation = new Vector3(0, 0, 0);
    private Vector3 endLocation = new Vector3(4, 0, -10);
    Vector3 danceFloorLocation = new Vector3(0.5f, 0, 1.5f);
    UnityEngine.AI.NavMeshAgent nav;
    float offset = 0.05f;
    // Use this for initialization
    void Start () {
        boringLocations.Add(new Vector3(-2, 0, -4));
        boringLocations.Add(new Vector3(0, 0, 6));
        boringLocations.Add(new Vector3(-4, 0, 5));
        boringLocations.Add(new Vector3(7, 0, 0));
        targetLocation = boringLocations[Random.Range(0, boringLocations.Count)];
        nav = GetComponent<UnityEngine.AI.NavMeshAgent>();
        animator = GetComponentInChildren<Animator>();
        if(animator != null)
        {
            animator.SetBool("walking", true);
        }
	}
	public void Adder()
    {
        if(targetLocation != endLocation)
        {
            heat += offset;
            if (heat > 1.5f)
            {
                heat = 1.5f;
            }
        }
    }

    public void Reducer()
    {
        heat -= 2 * offset;
        if (heat < 0f)
        {
            heat = 0f;
        }
    }
    // Update is called once per frame
    void Update()
    {
        if (heat <= 0.2f)
        {
            if(Time.time - startTime > 30)
            {
                targetLocation = endLocation;
                if(Vector3.Distance(this.transform.position, targetLocation) < 1)
                {
                    Destroy(gameObject);
                    Destroy(this);
                }
            }
            if(Vector3.Distance(this.transform.position, targetLocation) < 1)
            {
                nav.isStopped = true;
                if(animator != null)
                {
                    animator.SetBool("walking", false);
                    animator.SetBool("Frozen", true);
                }
            }
            else
            {
                if(animator != null)
                {
                    animator.SetBool("dancing", false);
                    animator.SetBool("walking", true);
                }
                nav.isStopped = false;
                nav.SetDestination(targetLocation);
            }

        }
        else if (heat > 0.2f)
        {
            if(Vector3.Distance(this.transform.position, danceFloorLocation) < 3) {
                nav.isStopped = true;
                if (animator != null)
                {
                    animator.SetBool("Frozen", false);
                    animator.SetBool("walking", false);
                    animator.SetBool("dancing", true);
                    animator.SetFloat("Heat", heat);
                }

            }
            else
            {
                if(animator != null)
                {
                    nav.isStopped = false;
                    animator.SetBool("Frozen", false);
                    animator.SetBool("walking", true);
                }
                nav.SetDestination(danceFloorLocation);
            }
        }
    }
}
