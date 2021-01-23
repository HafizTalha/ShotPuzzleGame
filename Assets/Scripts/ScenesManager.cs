namespace oneshotpuzzle
{
    using System.Collections;
    using System.Collections.Generic;
    using UnityEngine;
    using UnityEngine.SceneManagement;

    /// <summary>
    /// The class to update scene to next level when first scene is completed.
    /// </summary>
    public class ScenesManager : MonoBehaviour
    {
        /// <summary>
        /// The static method can be called from anywhere to load next scene.
        /// </summary>
        public static void LoadNextScene()
        {
            if (SceneManager.GetActiveScene().buildIndex < 5)
            {
                SceneManager.LoadScene(SceneManager.GetActiveScene().buildIndex + 1);
            }
        }

    }
}