namespace oneshotpuzzle
{
    using UnityEngine;
    using System;

    /// <summary>
    /// The class to attach on Block and detects the collision of ball.
    /// </summary>
    public class Block : MonoBehaviour
    {
        /// <summary>
        /// Event that should be triggered when block is hitted.
        /// </summary>
        public event Action OnBeingHit;

        /// <summary>
        /// Detects the 2D collision with the block and
        /// publish the event.
        /// </summary>
        /// <param name="collision"></param>
        private void OnCollisionEnter2D(Collision2D collision)
        {
            // If event is subscribed the publish it.
            if (OnBeingHit != null)
            {
                OnBeingHit();
            }

            // Deactivate this block gameobect.
            gameObject.SetActive(false);

        }
    }
}