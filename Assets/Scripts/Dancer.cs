using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Dancer : MonoBehaviour {
    private int excitement = 0;
    Animator animator;
    Vector3 barLocation = new Vector3(-2, 0, -4);
    Vector3 danceFloorLocation = new Vector3(0.5f, 0, 1.5f);
    UnityEngine.AI.NavMeshAgent nav;
    int offset = 1;
    // Use this for initialization
    void Start () {
        nav = GetComponent<UnityEngine.AI.NavMeshAgent>();
        InvokeRepeating("Adder", 1, 1);
        animator = GetComponentInChildren<Animator>();
        if(animator != null)
        {
            animator.SetBool("walking", true);
        }
	}
	void Adder()
    {
        excitement += offset;
        if (excitement > 20)
        {
            offset = -1;
        }
    }
    // Update is called once per frame
    void Update()
    {
        if (excitement < 10)
        {
            if(Vector3.Distance(this.transform.position, barLocation) < 1)
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
                nav.SetDestination(barLocation);
            }

        }
        else if (excitement > 10)
        {
            if(Vector3.Distance(this.transform.position, danceFloorLocation) < 2) {
                nav.isStopped = true;
                if (animator != null)
                {
                    animator.SetBool("Frozen", false);
                    animator.SetBool("walking", false);
                    animator.SetBool("dancing", true);
                    float heat = animator.GetFloat("Heat");
                    animator.SetFloat("Heat", heat + 0.001f);
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
