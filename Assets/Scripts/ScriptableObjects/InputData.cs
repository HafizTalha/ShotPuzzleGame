namespace oneshotpuzzle
{
    using UnityEngine;

    /// <summary>
    /// InputData class to create the scriptable objects of unity that can further be used to
    /// save data.
    /// </summary>
    [CreateAssetMenu(fileName = "Input_Data")]
    public class InputData : ScriptableObject
    {

        // Boolean to set true when mouse is pressed down.
        public bool isPressed;

        // Boolean to set true when mouse button is held down. 
        public bool isHeld;

        // Boolean to set true when mouse button is released.
        public bool isReleased;

    }
}