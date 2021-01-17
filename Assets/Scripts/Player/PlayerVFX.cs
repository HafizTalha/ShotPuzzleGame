namespace oneshotpuzzle
{
    using System.Collections;
    using System.Collections.Generic;
    using UnityEngine;

    /// <summary>
    /// The class includes the funcionality for Player visual effects.
    /// </summary>
    public class PlayerVFX : MonoBehaviour
    {
        /// <summary>
        /// The game object containing the doPrefab.
        /// </summary>
        public GameObject dotPrefab;

        /// <summary>
        /// The value for number of dots that needs to be instantiated.
        /// </summary>
        public int dotAmount;

        /// <summary>
        /// The gap distance between two dots.
        /// </summary>
        private float m_dotGap;

        /// <summary>
        /// Array to store the instantiated dots.
        /// </summary>
        private GameObject[] m_dotsArray;

        /// <summary>
        /// Animation curve for following trail of line that is generated while pointing.
        /// </summary>
        [Space]
        [Header("Line Variables")]
        public AnimationCurve followCurve;

        /// <summary>
        /// Follow speed.
        /// </summary>
        public float followSpeed;

        /// <summary>
        /// The variables for shoot ball.
        /// Animation curve for expand and shrink of the ball.
        /// </summary>
        [Space]
        [Header("Ball Variables")]
        public AnimationCurve expandCurve;

        /// <summary>
        /// The amount by which ball expands.
        /// </summary>
        public float expandAmount;

        /// <summary>
        /// The speed of ball expand.
        /// </summary>
        public float expandSpeed;

        /// <summary>
        /// The start size of ball.
        /// </summary>
        private Vector3 m_startSize;

        /// <summary>
        /// The target size of the ball.
        /// </summary>
        private Vector3 m_targetSize;

        /// <summary>
        /// The scroll amount for ball expand.
        /// </summary>
        private float m_scrollAmount;

        /// <summary>
        /// Trail Renderer to follow the ball.
        /// </summary>
        private TrailRenderer m_trailRenderer;

        // Start is called before the first frame update
        void Start()
        {
            // Percentage of one dot relative to whole.
            m_dotGap = 1f / dotAmount; 

            // Method to get the required components.
            GetComponents();

            // The method to initialize ball pulse effect variables.
            InitPulesEffectVariables();

            //Spawn the dots.
            SpawnDots();
        }

        /// <summary>
        /// The method that gets the required compnents
        /// needed to perform this class functionalities.
        /// </summary>
        private void GetComponents()
        {
            // Gets the trail renderer.
            m_trailRenderer = GetComponentInChildren<TrailRenderer>();

        }

        /// <summary>
        /// The method to initialize pulse effect variables.
        /// </summary>
        private void InitPulesEffectVariables()
        {
            m_startSize = transform.localScale;
            m_targetSize = m_startSize * expandAmount;
        }


        /// <summary>
        /// The method that spawn dots and save them in dots array.
        /// Dots are initally set to active fals so they are activated
        /// when needed.
        /// </summary>
        void SpawnDots()
        {
            m_dotsArray = new GameObject[dotAmount];

            for (int i = 0; i < dotAmount; i++)
            {
                GameObject _dot = Instantiate(dotPrefab);
                _dot.SetActive(false);
                m_dotsArray[i] = _dot;

            }
        }

        /// <summary>
        /// The method to position all the dots between start and 
        /// end position at the defined dots gap.
        /// </summary>
        /// <param name="startPos"></param>
        /// <param name="endPos"></param>
        public void SetDotPosition(Vector3 startPos, Vector3 endPos)
        {
            for (int i = 0; i < dotAmount; i++)
            {
                Vector3 _dotPos = m_dotsArray[i].transform.position;
                Vector3 _targetPos = Vector2.Lerp(startPos, endPos, (i + 1) * m_dotGap);

                float _smoothSpeed = (1f - followCurve.Evaluate(i * m_dotGap)) * followSpeed;

                //m_dotsArray[i].transform.position = _targetPos;
                m_dotsArray[i].transform.position = Vector2.Lerp(_dotPos, _targetPos, _smoothSpeed * Time.deltaTime);

            }
        }

        /// <summary>
        /// The method that changes dots state active or false.
        /// </summary>
        /// <param name="isActive"></param>
        public void ChangeDotActiveState(bool isActive)
        {
            for (int i = 0; i < dotAmount; i++)
            {
                m_dotsArray[i].SetActive(isActive);

            }
        }

        /// <summary>
        /// Method to set the DotsStart Position.
        /// </summary>
        /// <param name="pos"></param>
        public void SetDotsStartPos(Vector3 pos)
        {
            for (int i = 0; i < dotAmount; i++)
            {
                m_dotsArray[i].transform.position = pos;

            }
        }

        /// <summary>
        /// The method that makes ball to pulse using the 
        /// animation curve expandCurve.
        /// </summary>
        public void MakeBallPulse()
        {
            m_scrollAmount += Time.deltaTime * expandSpeed;

            float _precent = expandCurve.Evaluate(m_scrollAmount);

            transform.localScale = Vector2.Lerp(m_startSize, m_targetSize, _precent);
        }

        /// <summary>
        /// The method to reset the ball size.
        /// </summary>
        public void ResetBallSize()
        {
            transform.localScale = m_startSize;
            m_scrollAmount = 0f;
        }

        /// <summary>
        /// The method to change the trail state to emitting trail of not,
        /// also sets the time for trail.
        /// </summary>
        /// <param name="isEmitting"></param>
        /// <param name="time"></param>
        public void ChangeTrailState(bool isEmitting, float time)
        {
            m_trailRenderer.emitting = isEmitting;
            m_trailRenderer.time = time;
        }
    }
}