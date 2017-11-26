using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class EquipmentManager : MonoBehaviour {

    public List <GameObject> equipmentList = new List<GameObject>();
    float cycleTimer;
    float globalTimer;
    int songLength;

	// Use this for initialization
	void Awake () {
        cycleTimer = 0;
        globalTimer = 0;
        songLength = 360;
	}
	
	// Update is called once per frame
	void Update () {
        cycleTimer += Time.deltaTime;
        globalTimer += Time.deltaTime;
        float targetTime = 4 - (1 / 120) * globalTimer;
        if (targetTime < 0)
        {
            targetTime = 1;
        }
        if (cycleTimer >= targetTime)
        {
            ActivateEquipment();
        }

	}

    void ActivateEquipment ()
    {
        EquipmentScore equipment = equipmentList[Random.Range(0, equipmentList.Count)].GetComponent<EquipmentScore>();
        int value = 20;
        float activeTime = 2.5f;

        equipment.ActivateEquipment(value, activeTime);
        cycleTimer = 0;
        
    }
    

}
