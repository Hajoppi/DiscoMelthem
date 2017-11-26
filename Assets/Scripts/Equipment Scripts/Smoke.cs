﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using VRTK;

public class Smoke : VRTK_InteractableObject
{
    public GameObject effect;
    public EquipmentScore score;
    bool isBeingTouched;


    public override void StartUsing(VRTK_InteractUse usingObject)
    {
        base.StartUsing(usingObject);
        effect.SetActive(true);
        ParticleSystem ps = effect.GetComponent<ParticleSystem>();
        var em = ps.emission;
        em.rateOverTime = 10;
        var main = ps.main;
        main.loop = true;
        isBeingTouched = true;
    }

    public override void StopUsing(VRTK_InteractUse usingObject)
    {

        base.StopUsing(usingObject);
        ParticleSystem ps = effect.GetComponent<ParticleSystem>();
        var em = ps.emission;
        em.rateOverTime = 0;
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
            if (score.currentlyActive)
            {
                ScoreManager scoreManager = GameObject.FindWithTag("scoreManager").GetComponent<ScoreManager>();
                scoreManager.AddScore(score.scoreValue, true);
                score.DeactivateEquipment();
                score.currentlyActive = false;
            }
        }
    }
}
