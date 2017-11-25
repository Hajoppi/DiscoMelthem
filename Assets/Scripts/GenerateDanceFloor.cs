using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class GenerateDanceFloor : MonoBehaviour {
    public GameObject graphics;
    public Material tileMaterial;
    public ArrayList tiles = new ArrayList();
    System.Random rand = new System.Random();
	// Use this for initialization
	void Start () { 
		for(int i = 0; i < 12; i++)
        {
            for(int j = 0; j < 12; j++)
            {
                Material m = new Material(tileMaterial);
                GameObject cube = GameObject.CreatePrimitive(PrimitiveType.Cube);
                cube.GetComponent<MeshRenderer>().material = m;
                //m.CopyPropertiesFromMaterial(tileMaterial);
                tileMaterial.SetColor("_HotColor", new Color((float)rand.NextDouble(), (float)rand.NextDouble(), (float)rand.NextDouble()));
                tileMaterial.SetColor("_ColdColor", new Color((float)rand.NextDouble(), (float)rand.NextDouble(), (float)rand.NextDouble()));
                float x = graphics.transform.position.x;
                float z = graphics.transform.position.z;
                Vector3 pos = new Vector3(x + -i * 0.5f, 0f, x+ -j * 0.5f);
                cube.transform.position = pos;
                cube.transform.localScale = new Vector3(0.5f, 0.5f, 0.5f);
                cube.transform.SetParent(graphics.transform, true);
                tiles.Add(cube);
            }
        }
	}
	
	// Update is called once per frame
	void Update () {
		
	}
}
