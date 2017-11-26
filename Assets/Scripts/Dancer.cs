using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Dancer : MonoBehaviour {
    private float heat = 0;
    Animator animator;
    Vector3 barLocation = new Vector3(-2, 0, -4);
    Vector3 danceFloorLocation = new Vector3(0.5f, 0, 1.5f);
    UnityEngine.AI.NavMeshAgent nav;
    // Use this for initialization
    void Start () {
        nav = GetComponent<UnityEngine.AI.NavMeshAgent>();
        animator = GetComponentInChildren<Animator>();
        if(animator != null)
        {
            animator.SetBool("walking", true);
        }
	}
	public void Adder(float amount)
    {
        heat += amount;
        if (heat > 1.5f)
        {
            heat = 1.5f;
        }
    }

    public void Reducer(float amount)
    {
        heat -= 2 * amount;
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
                nav.isStopped = false;
                nav.SetDestination(barLocation);
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
