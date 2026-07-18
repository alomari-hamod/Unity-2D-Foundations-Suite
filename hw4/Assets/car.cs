using UnityEngine;

public class Hantour : MonoBehaviour
{
    public Transform[] points;        // نقاط الطريق
    public float speed = 2f;          // سرعة السيارة
    public float rotateSpeed = 5f;    // سرعة دوران السيارة

    public float rotationOffset = -90f;
    // إذا السيارة تلف غلط جرّب خليها 90 أو 0

    private int currentPoint = 0;

    void Start()
    {
        // خلي السيارة تبدأ من أول نقطة
        if (points.Length > 0)
        {
            transform.position = points[0].position;
            currentPoint = 1;
        }
    }

    void Update()
    {
        if (points.Length == 0)
            return;

        Transform target = points[currentPoint];

        Vector3 direction = target.position - transform.position;

        // تحريك السيارة باتجاه النقطة
        transform.position = Vector3.MoveTowards(
            transform.position,
            target.position,
            speed * Time.deltaTime
        );

        // تدوير السيارة حسب اتجاه الحركة
        if (direction != Vector3.zero)
        {
            float angle = Mathf.Atan2(direction.y, direction.x) * Mathf.Rad2Deg;

            Quaternion targetRotation = Quaternion.Euler(
                0,
                0,
                angle + rotationOffset
            );

            transform.rotation = Quaternion.Lerp(
                transform.rotation,
                targetRotation,
                rotateSpeed * Time.deltaTime
            );
        }

        // إذا وصلت للنقطة، انتقل للنقطة التالية
        if (Vector3.Distance(transform.position, target.position) < 0.05f)
        {
            currentPoint++;

            // لما توصل آخر نقطة، ارجع لأول نقطة
            if (currentPoint >= points.Length)
            {
                currentPoint = 0;
            }
        }
    }
}