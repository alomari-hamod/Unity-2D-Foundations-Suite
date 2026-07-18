using UnityEngine;

public class AnalogClock : MonoBehaviour
{
    public Transform hourHand;
    public Transform minuteHand;

    public float speed = 60f;

    void Update()
    {
        minuteHand.Rotate(0, 0, -6f * Time.deltaTime * speed);
        hourHand.Rotate(0, 0, -0.5f * Time.deltaTime * speed);
    }
}