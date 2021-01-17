namespace oneshotpuzzle
{

    using UnityEngine;
    using System;

    /// <summary>
    /// The player controller class includes all the functionalities for 
    /// player interactions.
    /// </summary>
    public class PlayerController : MonoBehaviour
    {
        /// <summary>
        /// The public event for mouse click.
        /// </summary>
        public event Action OnMouseClick;

        /// <summary>
        /// Reference to the scriptable object InputData.
        /// </summary>
        public InputData inputData;


        /// <summary>
        /// LayerMask to specify the layers where player should collide.
        /// </summary>
        public LayerMask layerToCollideWith;

        /// <summary>
        /// The float variable for player move speed, can be
        /// set from the inspector.
        /// </summary>
        public float moveSpeed = 5;

        /// <summary>
        /// The audio source to play audio when player ball hits the block.
        /// </summary>
        public AudioSource hitSound;

        /// <summary>
        /// The mouse click position.
        /// </summary>
        private Vector3 m_ClickedPos;

        /// <summary>
        /// The mouse release position.
        /// </summary>
        private Vector3 m_ReleasePos;

        /// <summary>
        /// The direction from mouse click towards release position.
        /// </summary>
        private Vector3 m_dir;

        /// <summary>
        /// Rigidbody to refer the player rigidbody.
        /// </summary>
        private Rigidbody2D m_rigidbody2D;

        /// <summary>
        /// To cache and refer the main camera.
        /// </summary>
        private Camera m_Cam;

        /// <summary>
        /// Reference to the PlayerVFX class.
        /// </summary>
        private PlayerVFX m_PlayerVFX;

        /// <summary>
        /// The reference to the player trail  
        /// </summary>
        private TrailRenderer m_trailRenderer;

        /// <summary>
        /// Boolean to set true when mouse is clicked on block.
        /// </summary>
        private bool m_hitBloclk;


        private void Start()
        {
            // Get all components.
            GetComponents();

        }

        /// <summary>
        /// The method the get reference to all components 
        /// needed for this class functionalities.
        /// </summary>
        void GetComponents()
        {
            m_rigidbody2D = GetComponent<Rigidbody2D>();
            m_PlayerVFX = GetComponent<PlayerVFX>();

            m_Cam = FindObjectOfType<Camera>();

        }

        /// <summary>
        /// Calls on every frame.
        /// </summary>
        private void Update()
        {
            // Call method to handle movements.
            HandleMovements();
        }

        /// <summary>
        /// The method to perform required functionalites
        /// when mouse is pressed, held or released. Basically 
        /// handles the player behavior based on mouse input.
        /// </summary>
        private void HandleMovements()
        {
            // Check if mouse left button is pressed.
            if (inputData.isPressed)
            {
                // Check if button is pressed on top of block then return.
                m_hitBloclk = CheckIfhitBlock();
                if (m_hitBloclk)
                {
                    return;
                }

                // Calculates screen to world position of mouse and set player to that position.
                m_ClickedPos = m_Cam.ScreenToWorldPoint(Input.mousePosition);
                m_ClickedPos = new Vector3(m_ClickedPos.x, m_ClickedPos.y, 0f);
                ResetPlayerPosition();

                // Set plaer visual effects.
                m_PlayerVFX.SetDotsStartPos(m_ClickedPos);
                m_PlayerVFX.ChangeDotActiveState(true);
                m_PlayerVFX.ChangeTrailState(false, 0f);

                // Invome event of mouse clicked.
                OnMouseClick?.Invoke();
            }

            if (inputData.isHeld)
            {
                if (m_hitBloclk)
                {
                    return;
                }
                m_PlayerVFX.SetDotPosition(m_ClickedPos, m_Cam.ScreenToWorldPoint(Input.mousePosition));

                m_PlayerVFX.MakeBallPulse();
            }

            if (inputData.isReleased)
            {
                if (m_hitBloclk)
                {
                    return;
                }

                Debug.Log("Released ");
                m_ReleasePos = m_Cam.ScreenToWorldPoint(Input.mousePosition);
                m_ReleasePos = new Vector3(m_ReleasePos.x, m_ReleasePos.y, 0f);
                m_PlayerVFX.ChangeDotActiveState(false);
                m_PlayerVFX.ResetBallSize();

                CalculateDirection();
                MovePlayerInDirection();
                m_PlayerVFX.ChangeTrailState(true, 0.75f);



            }

        }

        private void CalculateDirection()
        {
            m_dir = (m_ReleasePos - m_ClickedPos).normalized;
        }

        private void MovePlayerInDirection()
        {
            m_rigidbody2D.velocity = m_dir * moveSpeed;
        }

        private void ResetPlayerPosition()
        {
            transform.position = m_ClickedPos;
            m_rigidbody2D.velocity = Vector3.zero;
        }


        private void OnCollisionEnter2D(Collision2D other)
        {
            if (other.gameObject.CompareTag("Block"))
            {
                Vector2 _wallNormal = other.contacts[0].normal;

                m_dir = Vector2.Reflect(m_rigidbody2D.velocity, _wallNormal).normalized;

                m_rigidbody2D.velocity = m_dir * moveSpeed;

                hitSound.Play();
            }
        }

        private bool CheckIfhitBlock()
        {
            Ray _ray = m_Cam.ScreenPointToRay(Input.mousePosition);

            RaycastHit2D _hitBlock = Physics2D.Raycast(_ray.origin, _ray.direction, 100f, layerToCollideWith);

            return _hitBlock;
        }
    }
}