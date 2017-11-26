using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using VRTK;

public class Pyro : VRTK_InteractableObject
{
    bool isBeingTouched;
    public GameObject button;
    public GameObject effect;

    public override void StartUsing(VRTK_InteractUse usingObject)
    {
        base.StartUsing(usingObject);
        isBeingTouched = true;
    }

    public override void StopUsing(VRTK_InteractUse usingObject)
    {
        base.StopUsing(usingObject);
        isBeingTouched = false;
    }

    protected void Start()
    {
        isBeingTouched = false;
    }

    protected override void Update()
    {
        base.Update();
        if (isBeingTouched)
        {
            effect.SetActive(true);
        }

    }
}
