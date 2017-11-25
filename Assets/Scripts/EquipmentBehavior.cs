using UnityEngine;
using System.Collections;
using VRTK;

public class EquipmentBehavior : VRTK_InteractableObject
{
    float spinSpeed = 0f;
    Transform rotator;
    bool isBeingTouched;
    float prevControllerZ;
    public GameObject EquipmentGameObject;
    public EquipmentScore score;

    public override void StartUsing(VRTK_InteractUse usingObject)
    {
        base.StartUsing(usingObject);
        spinSpeed = 360f;
        isBeingTouched = true;
    }

    public override void StopUsing(VRTK_InteractUse usingObject)
    {
        base.StopUsing(usingObject);
        isBeingTouched = false;
        prevControllerZ = 0;
    }

    protected void Start()
    {
        rotator = EquipmentGameObject.transform;
        isBeingTouched = false;
        prevControllerZ = 0;
    }

    protected override void Update()
    {
        base.Update();


        if (isBeingTouched)
        {
            float controllerAngle = usingObject.transform.rotation.eulerAngles.z;
            if (prevControllerZ != 0)
            {
                float diff = controllerAngle - prevControllerZ;

                rotator.Rotate(new Vector3(diff, 0f, 0f));
                if (score.currentlyActive)
                {
                    ScoreManager scoreManager = GameObject.FindWithTag("scoreManager").GetComponent<ScoreManager>();
                    scoreManager.AddScore(score.scoreValue);
                    score.DeactivateEquipment();
                    score.currentlyActive = false;
                }
            }
            prevControllerZ = controllerAngle;
        }

    }
}