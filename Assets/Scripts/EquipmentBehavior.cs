using UnityEngine;
using System.Collections;
using VRTK;

public class EquipmentBehavior : VRTK_InteractableObject
{
    float spinSpeed = 0f;
    Transform rotator;
    bool isBeingTouched;
    float prevControllerZ;
    GameObject EquipmentGameObject;

    public override void StartUsing(VRTK_InteractUse usingObject)
    {
        base.StartUsing(usingObject);
        spinSpeed = 360f;
        isBeingTouched = true;
        EquipmentGameObject = transform.parent.gameObject;
    }

    public override void StopUsing(VRTK_InteractUse usingObject)
    {
        base.StopUsing(usingObject);
        isBeingTouched = false;
        prevControllerZ = 0;
    }

    protected void Start()
    {
        rotator = transform.parent;
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
                rotator.Rotate(new Vector3(0f, 0f, diff));
                EquipmentScore score = EquipmentGameObject.GetComponent<EquipmentScore>();
                if (score.currentlyActive)
                {
                    
                    ScoreManager scoreManager = GameObject.FindWithTag("scoreManager").GetComponent<ScoreManager>();
                    scoreManager.AddScore(score.scoreValue);
                    print(scoreManager.GetScore());
                    score.DeactivateEquipment();
                }
            }
            prevControllerZ = controllerAngle;
        }

    }
}