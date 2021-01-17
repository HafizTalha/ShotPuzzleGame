namespace oneshotpuzzle
{
    using UnityEngine;

    /// <summary>
    /// The class to update the data of scriptable 
    /// object based on inputs from left mouse button.
    /// </summary>
    public class InputManager : MonoBehaviour
    {
        // Referece to the scriptable object.
        public InputData inputData;

        // Update is called once per frame
        void Update()
        {
            // Contiuously call the method on every frame.
            WriteInputData();
        }

        /// <summary>
        /// The method that writes the mouse inputs states to respective
        /// booleans in inputData scriptable object.
        /// </summary>
        void WriteInputData()
        {
            inputData.isPressed = Input.GetMouseButtonDown(0);
            inputData.isHeld = Input.GetMouseButton(0);
            inputData.isReleased = Input.GetMouseButtonUp(0);
        }
    }
}