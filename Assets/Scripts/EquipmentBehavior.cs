using UnityEngine;
using System.Collections;
using VRTK;

public class EquipmentBehavior : VRTK_InteractableObject
{
    float spinSpeed = 0f;
    Transform rotator;
    bool isBeingTouched;
    float prevControllerZ;

    public override void StartUsing(VRTK_InteractUse usingObject)
    {
        base.StartUsing(usingObject);
        print(usingObject.transform.rotation.eulerAngles.z);
        spinSpeed = 360f;
        isBeingTouched = true;

    }

    public override void StopUsing(VRTK_InteractUse usingObject)
    {
        base.StopUsing(usingObject);
        spinSpeed = 0f;
        isBeingTouched = false;
    }

    protected void Start()
    {
        rotator = GameObject.Find("Graphics").transform.Find("Cube");
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
                rotator.transform.Rotate(new Vector3(0f, 0f, diff));

            }
            prevControllerZ = controllerAngle;
        }

    }
}